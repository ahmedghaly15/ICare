import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/comments/data/datasources/comments_remote_datasource.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class CommentsRepoImpl implements CommentsRepo {
  final CommentsRemoteDatasource _commentsRemoteDatasource;

  const CommentsRepoImpl(this._commentsRemoteDatasource);

  @override
  Future<FirebaseRequestResult<void>> deleteComment(
    DeleteCommentParams params,
  ) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentsRemoteDatasource.deleteComment(params),
    );
  }

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      typeNewComment(TypeNewCommentParams typeCommentParams) {
    return executeAndHandleFirebaseErrors<
        DocumentReference<Map<String, dynamic>>>(
      () async =>
          await _commentsRemoteDatasource.typeNewComment(typeCommentParams),
    );
  }

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> uploadCommentImage(
    File? commentImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async =>
          await _commentsRemoteDatasource.uploadCommentImage(commentImage),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> likeComment(LikeParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentsRemoteDatasource.likeComment(params),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> unLikeComment(LikeParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _commentsRemoteDatasource.unLikeComment(params),
    );
  }

  @override
  Stream<bool> isCommentLikedByMe(LikeParams params) {
    return _commentsRemoteDatasource.isCommentLikedByMe(params);
  }
}
