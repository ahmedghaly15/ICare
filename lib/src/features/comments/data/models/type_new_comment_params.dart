import 'package:icare/src/features/comments/data/models/comment_data.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';

class TypeNewCommentParams {
  final CommentModel? comment;
  final CommentData? commentData;
  final String? tinyTaleId;

  const TypeNewCommentParams({
    this.comment,
    this.tinyTaleId,
    this.commentData,
  });
}
