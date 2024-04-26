import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';

part 'speech_therapy_state.freezed.dart';

@freezed
class SpeechTherapyState<T> with _$SpeechTherapyState<T> {
  const factory SpeechTherapyState.initial() = _SpeechTherapyInitial;
  const factory SpeechTherapyState.getSpeechTherapyLevelsLoading() =
      GetSpeechTherapyLevelsLoading;
  const factory SpeechTherapyState.getSpeechTherapyLevelsSuccess(
      List<SpeechTherapyLevel> levels) = GetSpeechTherapyLevelsSuccess<T>;
  const factory SpeechTherapyState.getSpeechTherapyLevelsError(String error) =
      GetSpeechTherapyLevelsError<T>;
  const factory SpeechTherapyState.getLevelOneTrainingDataLoading() =
      GetLevelOneTrainingDataLoading;
  const factory SpeechTherapyState.getLevelOneTrainingDataSuccess(
      List<LevelOneTrainingResponse> data) = GetLevelOneTrainingDataSuccess<T>;
  const factory SpeechTherapyState.getLevelOneTrainingDataError(String error) =
      GetLevelOneTrainingDataError<T>;
  const factory SpeechTherapyState.getScoreLoading() = GetScoreLoading;
  const factory SpeechTherapyState.getScoreSuccess(ScoreResponse data) =
      GetScoreSuccess<T>;
  const factory SpeechTherapyState.getScoreError(String error) =
      GetScoreError<T>;
  const factory SpeechTherapyState.getLevelTwoTrainingDataLoading() =
      GetLevelTwoTrainingDataLoading;
  const factory SpeechTherapyState.getLevelTwoTrainingDataSuccess(
      List<LevelTwoTrainingResponse> data) = GetLevelTwoTrainingDataSuccess<T>;
  const factory SpeechTherapyState.getLevelTwoTrainingDataError(String error) =
      GetLevelTwoTrainingDataError<T>;
  const factory SpeechTherapyState.getAdvancedLevelTrainingDataLoading() =
      GetAdvancedLevelTrainingDataLoading;
  const factory SpeechTherapyState.getAdvancedLevelTrainingDataSuccess(
          List<AdvancedLevelTrainingResponse> data) =
      GetAdvancedLevelTrainingDataSuccess<T>;
  const factory SpeechTherapyState.getAdvancedLevelTrainingDataError(
      String error) = GetAdvancedLevelTrainingDataError<T>;
}
