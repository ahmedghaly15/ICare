import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';

part 'bab_cry_predictor_feedback_state.freezed.dart';

@freezed
class BabyCryPredictorFeedbackState<T> with _$BabyCryPredictorFeedbackState<T> {
  const factory BabyCryPredictorFeedbackState.initial() = _Initial;
  const factory BabyCryPredictorFeedbackState.getBabyCryPredictorClassesLoading() =
      GetBabyCryPredictorClassesLoading;
  const factory BabyCryPredictorFeedbackState.getBabyCryPredictorClassesSuccess(
          List<BabyCryPredictorClass> classes) =
      GetBabyCryPredictorClassesSuccess<T>;
  const factory BabyCryPredictorFeedbackState.getBabyCryPredictorClassesError(
      String error) = GetBabyCryPredictorClassesError<T>;
  const factory BabyCryPredictorFeedbackState.addNewClassLoading() =
      AddNewClassLoading;
  const factory BabyCryPredictorFeedbackState.addNewClassSuccess(String data) =
      AddNewClassSuccess<T>;
  const factory BabyCryPredictorFeedbackState.addNewClassError(String error) =
      AddNewClassError<T>;
  const factory BabyCryPredictorFeedbackState.leaveFeedbackLoading() =
      LeaveFeedbackLoading;
  const factory BabyCryPredictorFeedbackState.leaveFeedbackSuccess(
      String data) = LeaveFeedbackSuccess<T>;
  const factory BabyCryPredictorFeedbackState.leaveFeedbackError(String error) =
      LeaveFeedbackError<T>;
  const factory BabyCryPredictorFeedbackState.updateSelectedClass(
      BabyCryPredictorClass? babyCryPredictorClass) = UpdateSelectedClass<T>;
  const factory BabyCryPredictorFeedbackState.updatePlayingIndex(
      int? playingIndex) = UpdatePlayingIndex<T>;
}
