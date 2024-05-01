import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

abstract class CommentsRemoteDatasource {
  Future<DocumentReference<Map<String, dynamic>>> typeNewComment(
    TypeNewCommentParams typeCommentParams,
  );
  Future<TaskSnapshot> uploadCommentImage(File? commentImage);
  Future<void> deleteComment(DeleteCommentParams params);
  Future<void> likeComment(LikeParams params);
  Future<void> unLikeComment(LikeParams params);
  Stream<bool> isCommentLikedByMe(LikeParams params);
}
