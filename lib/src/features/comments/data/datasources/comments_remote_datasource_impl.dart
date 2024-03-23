import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/comments/data/datasources/comments_remote_datasource.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';

class CommentsRemoteDatasourceImpl implements CommentsRemoteDatasource {
  const CommentsRemoteDatasourceImpl();

  CollectionReference<Map<String, dynamic>> _accessCommentsCollection(
      String tinyTaleId) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.commentsCollection);
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> streamComments(
    String tinyTaleId,
  ) {
    return _accessCommentsCollection(tinyTaleId)
        .orderBy(AppStrings.dateTime, descending: false)
        .snapshots();
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
        await _accessCommentsCollection(typeCommentParams.tinyTaleId!)
            .add(comment.toJson());

    await document.update({AppStrings.commentId: document.id});

    return document;
  }

  @override
  Future<void> deleteComment(DeleteCommentParams params) async {
    return await _accessCommentsCollection(params.tinyTaleId!)
        .doc(params.commentId)
        .delete();
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
}
