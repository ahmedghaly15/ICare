import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
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
  Future<QuerySnapshot<Map<String, dynamic>>> streamComments(
    String tinyTaleId,
  ) {
    return accessCommentsCollection(tinyTaleId)
        .orderBy(AppStrings.dateTime, descending: false)
        .get();
  }

  @override
  Future<DocumentReference<Map<String, dynamic>>> typeNewComment(
    TypeNewCommentParams typeCommentParams,
  ) async {
    final CommentModel comment = CommentModel(
      user: Helper.currentUser,
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
    _deleteEachCommentRepliesLikes(params);
    _deleteEachCommentReplies(params);
    _deleteEachCommentLikes(params);

    return await accessCommentsCollection(params.tinyTaleId!)
        .doc(params.commentId)
        .delete();
  }

  void _deleteEachCommentLikes(DeleteCommentParams params) {
    accessCommentsCollection(params.tinyTaleId!).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentLikesCollection)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference.delete();
          }
        });
      }
    });
  }

  void _deleteEachCommentReplies(DeleteCommentParams params) {
    accessCommentsCollection(params.tinyTaleId!).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentReplies)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference.delete();
          }
        });
      }
    });
  }

  void _deleteEachCommentRepliesLikes(DeleteCommentParams params) {
    accessCommentsCollection(params.tinyTaleId!).snapshots().listen((snapshot) {
      for (final doc in snapshot.docs) {
        doc.reference
            .collection(AppStrings.commentReplies)
            .snapshots()
            .listen((event) {
          for (final doc in event.docs) {
            doc.reference
                .collection(AppStrings.replyLikes)
                .snapshots()
                .listen((event) {
              for (final doc in event.docs) {
                doc.reference.delete();
              }
            });
          }
        });
      }
    });
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
      user: Helper.currentUser,
      dateTime: DateTime.now().toString(),
    );

    return await accessCommentLikesCollection(
            params.tinyTaleId, params.commentId!)
        .doc(Helper.uId)
        .set(like.toJson());
  }

  @override
  Future<void> unLikeComment(LikeParams params) async {
    return await accessCommentLikesCollection(
            params.tinyTaleId, params.commentId!)
        .doc(Helper.uId)
        .delete();
  }

  @override
  Stream<bool> isCommentLikedByMe(LikeParams params) {
    return accessCommentLikesCollection(params.tinyTaleId, params.commentId!)
        .doc(Helper.uId)
        .snapshots()
        .map((snapshot) => snapshot.exists);
  }
}
