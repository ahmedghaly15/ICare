import 'package:flutter/material.dart';
import 'package:icare/src/features/comments/data/models/comment_data.dart';

class TypeNewCommentParams {
  final CommentData? commentData;
  final String? tinyTaleId;
  final BuildContext context;

  const TypeNewCommentParams({
    this.tinyTaleId,
    this.commentData,
    required this.context,
  });
}
