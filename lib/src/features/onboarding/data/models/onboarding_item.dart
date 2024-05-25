import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_item.freezed.dart';

@freezed
class OnboardingItem with _$OnboardingItem {
  const factory OnboardingItem({
    required String image,
    required String description,
  }) = _OnboardingItem;
}
