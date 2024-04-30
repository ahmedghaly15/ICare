import 'package:icare/src/features/comments/data/models/comment_data.dart';

class TypeNewCommentParams {
  final CommentData? commentData;
  final String? tinyTaleId, commentId;

  const TypeNewCommentParams({
    this.tinyTaleId,
    this.commentId,
    this.commentData,
  });
}
