import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_response.dart';

part 'baby_cry_predictor_state.freezed.dart';

@freezed
class BabyCryPredictorState<T> with _$BabyCryPredictorState<T> {
  const factory BabyCryPredictorState.initial() = _BabyCryPredictorInitial;
  const factory BabyCryPredictorState.convertIsRecording(bool isRecording) =
      _ConvertIsRecording<T>;

  const factory BabyCryPredictorState.assignAudioPathVal(String path) =
      _AssignAudioPathVal<T>;

  const factory BabyCryPredictorState.loading() = BabyCryPredictorLoading;
  const factory BabyCryPredictorState.success(BabyCryPredictorResponse data) =
      BabyCryPredictorSuccess<T>;

  const factory BabyCryPredictorState.error(String error) =
      BabyCryPredictorError;
}
