import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_params.freezed.dart';

@freezed
class LikeParams with _$LikeParams {
  const factory LikeParams({
    required String tinyTaleId,
    String? commentId,
    String? replyId,
  }) = _LikeParams;
}
