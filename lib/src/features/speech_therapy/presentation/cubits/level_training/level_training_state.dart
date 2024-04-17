import 'package:freezed_annotation/freezed_annotation.dart';

part 'level_training_state.freezed.dart';

@freezed
class LevelTrainingState<T> with _$LevelTrainingState<T> {
  const factory LevelTrainingState.initial() = LevelTrainingInitial;
  const factory LevelTrainingState.convertIsPlayingBool(bool isPlaying) =
      ConvertIsPlayingBool<T>;
}
