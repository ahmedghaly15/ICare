import 'package:icare/src/features/comments/data/models/comment_model.dart';

class CommentRepliesViewParams {
  final String? tinyTaleId;
  final CommentModel? comment;
  final String? commentOwnerEmail;

  const CommentRepliesViewParams({
    required this.comment,
    required this.tinyTaleId,
    this.commentOwnerEmail,
  });
}
