import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

part 'score_state.freezed.dart';

@freezed
class ScoreState<T> with _$ScoreState<T> {
  const factory ScoreState.initial() = _ScoreInitial;
  const factory ScoreState.getScoreLoading() = GetScoreLoading;
  const factory ScoreState.getScoreSuccess(ScoreResponse data) =
      GetScoreSuccess<T>;
  const factory ScoreState.getScoreError(String error) = GetScoreError<T>;
}
