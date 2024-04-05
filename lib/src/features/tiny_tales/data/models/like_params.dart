class LikeParams {
  final String tinyTaleId;
  final String? commentId;
  final String? replyId;

  const LikeParams({
    required this.tinyTaleId,
    this.commentId,
    this.replyId,
  });
}
