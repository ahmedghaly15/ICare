import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

abstract class CommentRepliesDatasource {
  Future<QuerySnapshot<Map<String, dynamic>>> getCommentReplies(
      CommentRepliesViewParams params);
  Future<DocumentReference<Map<String, dynamic>>> typeNewCommentReply(
    TypeNewCommentParams typeCommentParams,
  );
  Future<TaskSnapshot> uploadCommentReplyImage(File? commentReplyImage);
  Future<void> deleteCommentReply(DeleteCommentParams params);
  Future<void> likeCommentReply(LikeParams params);
  Future<void> unLikeCommentReply(LikeParams params);
  Stream<bool> isCommentReplyLikedByMe(LikeParams params);
}
