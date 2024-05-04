import 'package:flutter/material.dart';

class AppConstants {
  static const ScrollPhysics scrollPhysics = BouncingScrollPhysics();
  static const double padding25 = 25;
  static const double radius25 = 25.0;
  static const double authTopMargin = 27.0;
  static const Duration onboardingScrollingDuration =
      Duration(milliseconds: 300);
  static const Curve onboardingScrollingCurve = Curves.linear;
  static const Duration cryTranslatorAnimationDuration =
      Duration(milliseconds: 650);
  static const double medicalCategoryItemAspectRatio = 350 / 175;
  static const double medicalInfoCategoryItemAspectRatio = 1.5;
  static const double padding16 = 16;
  static const String defaultProfileImage =
      'https://cdn.create.vista.com/api/media/small/563147854/stock-vector-mother-and-daughter';
  static const Duration dialogsTransitionDuration = Duration(milliseconds: 150);
  static const double trainGradientContainerRadius = 50;
  static const double outlinedButtonBorderRadiusVal = 16.0;
}
