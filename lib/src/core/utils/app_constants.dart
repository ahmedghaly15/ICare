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

  static const double authTopMargin = 27.0;

  static Duration get onboardingScrollingDuration =>
      const Duration(milliseconds: 300);

  static Curve get onboardingScrollingCurve => Curves.fastEaseInToSlowEaseOut;
}
