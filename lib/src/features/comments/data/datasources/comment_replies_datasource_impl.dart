import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/extensions/get_query_snapshot.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/comments/data/datasources/comment_replies_datasource.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class CommentRepliesDatasourceImpl implements CommentRepliesDatasource {
  CollectionReference<Map<String, dynamic>> _accessCommentRepliesCollection(
      CommentRepliesViewParams params) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(params.tinyTaleId)
        .collection(AppStrings.commentsCollection)
        .doc(params.commentId)
        .collection(AppStrings.commentReplies);
  }

  @override
  Future<void> deleteCommentReply(DeleteCommentParams params) async {
    return await _accessCommentRepliesCollection(
      CommentRepliesViewParams(
        commentId: params.commentId!,
        tinyTaleId: params.tinyTaleId!,
      ),
    ).doc(params.commentReplyId).delete();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getCommentReplies(
    CommentRepliesViewParams params,
  ) async {
    return await _accessCommentRepliesCollection(params).getQuerySnapshot();
  }

  @override
  Stream<bool> isCommentReplyLikedByMe(LikeParams params) {
    return _accessCommentRepliesCollection(
      CommentRepliesViewParams(
        commentId: params.commentId!,
        tinyTaleId: params.tinyTaleId,
      ),
    ).doc(Helper.uId).snapshots().map((snapshot) => snapshot.exists);
  }

  @override
  Future<void> likeCommentReply(LikeParams params) async {
    final LikeModel like = LikeModel(
      user: params.context.read<UserCubit>().currentUser,
      dateTime: DateTime.now().toString(),
    );

    return await _accessCommentReplyLikesCollection(params)
        .doc(Helper.uId)
        .set(like.toJson());
  }

  CollectionReference<Map<String, dynamic>> _accessCommentReplyLikesCollection(
      LikeParams params) {
    return _accessCommentRepliesCollection(
      CommentRepliesViewParams(
        commentId: params.commentId!,
        tinyTaleId: params.tinyTaleId,
      ),
    ).doc(params.commentId).collection(AppStrings.replyLikes);
  }

  @override
  Future<DocumentReference<Map<String, dynamic>>> typeNewCommentReply(
    TypeNewCommentParams typeCommentParams,
  ) async {
    final CommentModel comment = CommentModel(
      user: typeCommentParams.context.read<UserCubit>().currentUser,
      commentData: typeCommentParams.commentData,
      dateTime: Timestamp.now(),
    );

    final DocumentReference<Map<String, dynamic>> document =
        await _accessCommentRepliesCollection(
      CommentRepliesViewParams(
        commentId: typeCommentParams.commentId!,
        tinyTaleId: typeCommentParams.tinyTaleId!,
      ),
    ).add(comment.toJson());

    await document.update({AppStrings.commentId: document.id});
    return document;
  }

  @override
  Future<void> unLikeCommentReply(LikeParams params) async {
    return await _accessCommentReplyLikesCollection(params)
        .doc(Helper.uId)
        .delete();
  }

  @override
  Future<TaskSnapshot> uploadCommentReplyImage(File? commentReplyImage) async {
    return await getIt
        .get<FirebaseStorage>()
        .ref()
        .child(
          '${AppStrings.commentReplies}/${Uri.file(commentReplyImage!.path).pathSegments.last}',
        )
        .putFile(commentReplyImage);
  }
}
