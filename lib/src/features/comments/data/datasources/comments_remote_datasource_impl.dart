import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/comments/data/datasources/comments_remote_datasource.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentsRemoteDatasourceImpl implements CommentsRemoteDatasource {
  const CommentsRemoteDatasourceImpl();

  @override
  Future<DocumentReference<Map<String, dynamic>>> typeNewComment(
    TypeNewCommentParams typeCommentParams,
  ) async {
    final CommentModel comment = CommentModel(
      user: Constants.currentUser,
      commentData: typeCommentParams.commentData,
      dateTime: Timestamp.now(),
    );
    final DocumentReference<Map<String, dynamic>> document =
        await accessCommentsCollection(typeCommentParams.tinyTaleId!)
            .add(comment.toJson());
    await document.update({AppStrings.commentId: document.id});
    return document;
  }

  @override
  Future<void> deleteComment(DeleteCommentParams params) async {
    Future.wait([
      _deleteEachCommentRepliesLikes(params),
      _deleteEachCommentReplies(params),
      _deleteEachCommentLikes(params),
      _deleteCommentFromNotifications(params.commentId!),
      accessCommentsCollection(params.tinyTaleId!)
          .doc(params.commentId)
          .delete(),
    ]);
  }

  Future<void> _deleteCommentFromNotifications(String commentId) async {
    final notifications =
        await accessCurrentUserNotificationsCollection().get();
    Future.forEach(notifications.docs, (notification) async {
      if (notification.data()['comment'] != null &&
          notification.data()['comment']['commentId'] == commentId) {
        await notification.reference.delete();
      }
    });
  }

  Future<void> _deleteEachCommentLikes(DeleteCommentParams params) async {
    final comments = await accessCommentsCollection(params.tinyTaleId!).get();
    for (final comment in comments.docs) {
      final commentLikes = await comment.reference
          .collection(AppStrings.commentLikesCollection)
          .get();
      for (final commentLike in commentLikes.docs) {
        await commentLike.reference.delete();
      }
    }
  }

  Future<void> _deleteEachCommentReplies(DeleteCommentParams params) async {
    final comments = await accessCommentsCollection(params.tinyTaleId!).get();
    for (final comment in comments.docs) {
      final commentReplies =
          await comment.reference.collection(AppStrings.commentReplies).get();
      for (final commentReply in commentReplies.docs) {
        await commentReply.reference.delete();
      }
    }
  }

  Future<void> _deleteEachCommentRepliesLikes(
    DeleteCommentParams params,
  ) async {
    final comments = await accessCommentsCollection(params.tinyTaleId!).get();
    for (final comment in comments.docs) {
      final commentReplies =
          await comment.reference.collection(AppStrings.commentReplies).get();
      for (final commentReply in commentReplies.docs) {
        final replyLikes = await commentReply.reference
            .collection(AppStrings.replyLikes)
            .get();
        for (final replyLike in replyLikes.docs) {
          await replyLike.reference.delete();
        }
      }
    }
  }

  @override
  Future<TaskSnapshot> uploadCommentImage(File? commentImage) async {
    return await getIt
        .get<FirebaseStorage>()
        .ref()
        .child(
          '${AppStrings.commentsCollection}/${Uri.file(commentImage!.path).pathSegments.last}',
        )
        .putFile(commentImage);
  }

  @override
  Future<void> likeComment(LikeParams params) async {
    final LikeModel like = LikeModel(
      user: Constants.currentUser,
      dateTime: DateTime.now().toString(),
    );
    return await accessCommentLikesCollection(
            params.tinyTaleId, params.commentId!)
        .doc(Constants.uId)
        .set(like.toJson());
  }

  @override
  Future<void> unLikeComment(LikeParams params) async {
    return await accessCommentLikesCollection(
            params.tinyTaleId, params.commentId!)
        .doc(Constants.uId)
        .delete();
  }

  @override
  Stream<bool> isCommentLikedByMe(LikeParams params) {
    return accessCommentLikesCollection(params.tinyTaleId, params.commentId!)
        .doc(Constants.uId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }
}
