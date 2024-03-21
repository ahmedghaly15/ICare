import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState<T> with _$OnboardingState<T> {
  const factory OnboardingState.initial() = _OnboardingInitial;
  const factory OnboardingState.pageViewIndexChange(int index) =
      PageViewIndexChange<T>;
}
