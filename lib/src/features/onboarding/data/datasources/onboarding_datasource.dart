import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:icare/src/features/onboarding/data/models/onboarding_item.dart';

abstract class OnboardingDatasource {
  List<OnboardingItem> onboardingItems();

  void navigateAmongPages(NavigateAmongPagesParams params);

  void skip(BuildContext context);
}

class OnboardingDatasourceImpl implements OnboardingDatasource {
  const OnboardingDatasourceImpl();

  void _navigateToStartView(BuildContext context) {
    getIt
        .get<CacheHelper>()
        .saveData(key: AppStrings.cachedOnboarding, value: true)
        .then((value) {
      if (value) {
        context.replaceRoute(const StartRoute());
      }
    });
  }

  @override
  void navigateAmongPages(NavigateAmongPagesParams params) {
    if (params.isLastBoarding) _navigateToStartView(params.context);

    params.pageController.nextPage(
      duration: AppConstants.onboardingScrollingDuration,
      curve: AppConstants.onboardingScrollingCurve,
    );
  }

  @override
  List<OnboardingItem> onboardingItems() => const <OnboardingItem>[
        OnboardingItem(
          image: AppAssets.imagesOnboarding1,
          title: AppStrings.onboarding1Title,
          description: AppStrings.onboarding1Description,
        ),
        OnboardingItem(
          image: AppAssets.imagesOnboarding2,
          title: AppStrings.onboarding2Title,
          description: AppStrings.onboarding2Description,
        ),
        OnboardingItem(
          image: AppAssets.imagesOnboarding3,
          title: AppStrings.onboarding3Title,
          description: AppStrings.onboarding3Description,
        ),
        OnboardingItem(
          image: AppAssets.imagesOnboarding4,
          title: AppStrings.onboarding4Title,
          description: AppStrings.onboarding4Description,
        ),
        OnboardingItem(
          image: AppAssets.imagesOnboarding5,
          title: AppStrings.onboarding5Title,
          description: AppStrings.onboarding5Description,
        ),
      ];

  @override
  void skip(BuildContext context) {
    getIt
        .get<CacheHelper>()
        .saveData(key: AppStrings.cachedOnboarding, value: true)
        .then((value) {
      if (value) {
        context.replaceRoute(const StartRoute());
      }
    });
  }
}
