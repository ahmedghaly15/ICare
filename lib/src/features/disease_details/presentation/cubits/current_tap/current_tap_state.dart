import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_tap_state.freezed.dart';

@freezed
class CurrentTapState<T> with _$CurrentTapState<T> {
  const factory CurrentTapState.initial() = _Initial;
  const factory CurrentTapState.updateCurrentTab(int index) =
      UpdateCurrentTab<T>;
}
