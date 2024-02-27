import 'package:flutter/material.dart';

class NavigateAmongPagesParams {
  final BuildContext context;
  final PageController pageController;
  final bool isLastBoarding;

  const NavigateAmongPagesParams({
    required this.context,
    required this.pageController,
    required this.isLastBoarding,
  });
}
