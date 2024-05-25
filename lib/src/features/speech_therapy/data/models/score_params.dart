import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_params.freezed.dart';

@freezed
class ScoreParams with _$ScoreParams {
  const factory ScoreParams({
    required String userId,
    required int level,
  }) = _ScoreParams;
}
