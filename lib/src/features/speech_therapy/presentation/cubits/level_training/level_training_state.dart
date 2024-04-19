import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_marking_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/advanced_level_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';

part 'level_training_state.freezed.dart';

@freezed
class LevelTrainingState<T> with _$LevelTrainingState<T> {
  const factory LevelTrainingState.initial() = LevelTrainingInitial;
  const factory LevelTrainingState.convertIsPlayingBool(bool isPlaying) =
      ConvertIsPlayingBool<T>;
  const factory LevelTrainingState.userIsTryingNow() = UserIsTryingNow;
  const factory LevelTrainingState.assignAudioPathVal(String? path) =
      _AssignAudioPathVal<T>;
  const factory LevelTrainingState.convertIsRecordingBool(bool isRecording) =
      ConvertIsRecordingBool<T>;
  const factory LevelTrainingState.markLoading() = MarkLoading;
  const factory LevelTrainingState.markSuccess(MarkResponse data) =
      MarkSuccess<T>;
  const factory LevelTrainingState.markError(String error) = MarkError<T>;
  const factory LevelTrainingState.advancedLevelMarkingLoading() =
      AdvancedLevelMarkingLoading;
  const factory LevelTrainingState.advancedLevelMarkingSuccess(
      AdvancedLevelMarkingResponse data) = AdvancedLevelMarkingSuccess<T>;
  const factory LevelTrainingState.advancedLevelMarkingError(String error) =
      AdvancedLevelMarkingError<T>;
  const factory LevelTrainingState.convertIsAnAdvancedItemSelected(
      bool isAnAdvancedItemSelected) = ConvertIsAnAdvancedItemSelected<T>;
  const factory LevelTrainingState.updateSelectedAyah(Ayah selectedAyah) =
      UpdateSelectedAyah<T>;
}
