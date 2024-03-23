import 'package:icare/src/features/comments/data/models/comment_data.dart';

class TypeNewCommentParams {
  final CommentData? commentData;
  final String? tinyTaleId;

  const TypeNewCommentParams({
    this.tinyTaleId,
    this.commentData,
  });
}
