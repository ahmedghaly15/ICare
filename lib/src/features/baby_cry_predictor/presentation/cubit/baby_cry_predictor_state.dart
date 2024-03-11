import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_cry_predictor_state.freezed.dart';

@freezed
class BabyCryPredictorState<T> with _$BabyCryPredictorState<T> {
  const factory BabyCryPredictorState.initial() = _BabyCryPredictorInitial;
  const factory BabyCryPredictorState.convertIsRecording(bool isRecording) =
      _ConvertIsRecording<T>;

  const factory BabyCryPredictorState.assignAudioPathVal(String path) =
      _AssignAudioPathVal<T>;
}
