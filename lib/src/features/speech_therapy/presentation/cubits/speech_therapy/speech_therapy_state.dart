import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';

part 'speech_therapy_state.freezed.dart';

@freezed
class SpeechTherapyState<T> with _$SpeechTherapyState<T> {
  const factory SpeechTherapyState.initial() = _SpeechTherapyInitial;
  const factory SpeechTherapyState.getLevelOneTrainingDataLoading() =
      GetLevelOneTrainingDataLoading;
  const factory SpeechTherapyState.getLevelOneTrainingDataSuccess(
      List<LevelOneTrainingResponse> data) = GetLevelOneTrainingDataSuccess<T>;
  const factory SpeechTherapyState.getLevelOneTrainingDataError(String error) =
      GetLevelOneTrainingDataError<T>;
  const factory SpeechTherapyState.markLevelOneExamLoading() =
      MarkLevelOneExamLoading;
  const factory SpeechTherapyState.markLevelOneExamSuccess(MarkResponse data) =
      MarkLevelOneExamSuccess<T>;
  const factory SpeechTherapyState.markLevelOneExamError(String error) =
      MarkLevelOneExamError<T>;
  const factory SpeechTherapyState.getScoreLoading() = GetScoreLoading;
  const factory SpeechTherapyState.getScoreSuccess(ScoreResponse data) =
      GetScoreSuccess<T>;
  const factory SpeechTherapyState.getScoreError(String error) =
      GetScoreError<T>;
}
