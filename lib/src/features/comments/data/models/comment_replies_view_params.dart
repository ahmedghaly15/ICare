class CommentRepliesViewParams {
  final String? commentId;
  final String? tinyTaleId;
  final String? commentOwnerEmail;

  const CommentRepliesViewParams({
    required this.commentId,
    required this.tinyTaleId,
    this.commentOwnerEmail,
  });
}
