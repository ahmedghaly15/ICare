import 'package:flutter/material.dart';
import 'package:icare/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:icare/src/features/onboarding/data/models/navigate_among_pages_params.dart';
import 'package:icare/src/features/onboarding/data/models/onboarding_item.dart';

class OnboardingRepo {
  final OnboardingDatasource _onboardingDatasource;

  const OnboardingRepo(this._onboardingDatasource);

  void navigateAmongPages(NavigateAmongPagesParams params) =>
      _onboardingDatasource.navigateAmongPages(params);

  void skip(BuildContext context) => _onboardingDatasource.skip(context);

  List<OnboardingItem> onboardingItems() =>
      _onboardingDatasource.onboardingItems();
}
