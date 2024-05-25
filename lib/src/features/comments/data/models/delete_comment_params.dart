import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_params.freezed.dart';

@freezed
class DeleteCommentParams with _$DeleteCommentParams {
  const factory DeleteCommentParams({
    String? tinyTaleId,
    String? commentId,
    String? commentReplyId,
  }) = _DeleteCommentParams;
}
