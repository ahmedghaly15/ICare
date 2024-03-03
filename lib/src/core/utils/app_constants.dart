import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  static Widget Function(
    BuildContext,
    Animation<double>,
    Animation<double>,
    Widget,
  )? get transitionsBuilder => TransitionsBuilders.slideLeftWithFade;
  static int get transitionDuration => 400;

  static const ScrollPhysics scrollPhysics = BouncingScrollPhysics();

  static EdgeInsetsGeometry get horizontalPadding =>
      EdgeInsets.symmetric(horizontal: horizontalPaddingVal.w);

  static const double horizontalPaddingVal = 25;

  static double radiusVal = 25.0.r;

  static const double authTopMargin = 27.0;

  static Duration get onboardingScrollingDuration =>
      const Duration(milliseconds: 300);

  static Curve get onboardingScrollingCurve => Curves.fastEaseInToSlowEaseOut;

  static BoxShadow get primaryBoxShadow => BoxShadow(
        offset: Offset(0.w, 4.h),
        blurRadius: 4.w,
        spreadRadius: 0,
        color: Colors.black.withOpacity(0.25),
      );

  static const Duration animationConfigurationDuration =
      Duration(milliseconds: 375);
}
