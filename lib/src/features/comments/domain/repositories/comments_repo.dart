import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

abstract class CommentsRepo {
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>>
      typeNewComment(TypeNewCommentParams typeCommentParams);
  Future<FirebaseRequestResult<TaskSnapshot>> uploadCommentImage(
    File? commentImage,
  );
  Future<FirebaseRequestResult<void>> deleteComment(DeleteCommentParams params);
  Future<FirebaseRequestResult<void>> likeComment(LikeParams params);
  Future<FirebaseRequestResult<void>> unLikeComment(LikeParams params);
  Stream<bool> isCommentLikedByMe(LikeParams params);
}
