import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:icare/src/features/onboarding/data/models/onboarding_item.dart';
import 'package:icare/src/features/onboarding/data/repositories/onboarding_repo.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  final OnboardingRepo _onboardingRepo;

  OnboardingCubit(this._onboardingRepo)
      : super(const OnboardingState.initial()) {
    pageController = PageController(initialPage: 0);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }

  bool isLastBoarding = false;

  late final PageController pageController;

  List<OnboardingItem> onboardingItems() => _onboardingRepo.onboardingItems();

  void onChangePageIndex(int index) {
    if (index == onboardingItems().length - 1) {
      isLastBoarding = true;
    } else {
      isLastBoarding = false;
    }

    emit(OnboardingState.pageViewIndexChange(index));
  }

  void navigateAmongPages(BuildContext context) {
    _onboardingRepo.navigateAmongPages(
      NavigateAmongPagesParams(
        context: context,
        pageController: pageController,
        isLastBoarding: isLastBoarding,
      ),
    );
  }

  void skipToLogin(BuildContext context) {
    _onboardingRepo.skipToLogin(context);
  }
}
