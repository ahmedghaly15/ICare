import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/comments/data/datasources/comment_replies_datasource.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentRepliesRepoImpl implements CommentRepliesRepo {
  final CommentRepliesDatasource _commentRepliesDatasource;

  const CommentRepliesRepoImpl(this._commentRepliesDatasource);

  @override
  Future<FirebaseRequestResult<void>> deleteCommentReply(
      DeleteCommentParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentRepliesDatasource.deleteCommentReply(params),
    );
  }

  @override
  Future<FirebaseRequestResult<List<CommentModel>>> getCommentReplies(
    CommentRepliesViewParams params,
  ) {
    return executeAndHandleFirebaseErrors<List<CommentModel>>(() async {
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await _commentRepliesDatasource.getCommentReplies(params);

      return querySnapshot.docs
          .map((doc) => CommentModel.fromJson(doc.data()))
          .toList();
    });
  }

  @override
  Stream<bool> isCommentReplyLikedByMe(LikeParams params) {
    return _commentRepliesDatasource.isCommentReplyLikedByMe(params);
  }

  @override
  Future<FirebaseRequestResult<void>> likeCommentReply(LikeParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentRepliesDatasource.likeCommentReply(params),
    );
  }

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      typeNewCommentReply(
    TypeNewCommentParams typeCommentParams,
  ) {
    return executeAndHandleFirebaseErrors<
        DocumentReference<Map<String, dynamic>>>(
      () async => await _commentRepliesDatasource
          .typeNewCommentReply(typeCommentParams),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> unLikeCommentReply(LikeParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentRepliesDatasource.unLikeCommentReply(params),
    );
  }

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> uploadCommentReplyImage(
    File? commentReplyImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async => await _commentRepliesDatasource
          .uploadCommentReplyImage(commentReplyImage),
    );
  }
}
