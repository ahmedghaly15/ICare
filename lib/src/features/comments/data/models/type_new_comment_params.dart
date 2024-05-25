import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';

part 'type_new_comment_params.freezed.dart';

@freezed
class TypeNewCommentParams with _$TypeNewCommentParams {
  const factory TypeNewCommentParams({
    String? tinyTaleId,
    String? commentId,
    CommentData? commentData,
  }) = _TypeNewCommentParams;
}
