import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';

part 'comment_replies_view_params.freezed.dart';

@freezed
class CommentRepliesViewParams with _$CommentRepliesViewParams {
  const factory CommentRepliesViewParams({
    required String? tinyTaleId,
    required CommentModel? comment,
    String? commentOwnerEmail,
  }) = _CommentRepliesViewParams;
}
