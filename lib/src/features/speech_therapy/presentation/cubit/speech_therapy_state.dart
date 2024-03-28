import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_exam_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_data.dart';

part 'speech_therapy_state.freezed.dart';

@freezed
class SpeechTherapyState<T> with _$SpeechTherapyState<T> {
  const factory SpeechTherapyState.initial() = _SpeechTherapyInitial;
  const factory SpeechTherapyState.getLevelOneTrainingDataLoading() =
      GetLevelOneTrainingDataLoading;
  const factory SpeechTherapyState.getLevelOneTrainingDataSuccess(
      List<LevelOneTrainingData> data) = GetLevelOneTrainingDataSuccess<T>;
  const factory SpeechTherapyState.getLevelOneTrainingDataError(String error) =
      GetLevelOneTrainingDataError<T>;

  const factory SpeechTherapyState.getLevelOneExamLoading() =
      GetLevelOneExamLoading;
  const factory SpeechTherapyState.getLevelOneExamSuccess(
      List<LevelOneExamResponse> data) = GetLevelOneExamSuccess<T>;
  const factory SpeechTherapyState.getLevelOneExamError(String error) =
      GetLevelOneExamError<T>;
}
