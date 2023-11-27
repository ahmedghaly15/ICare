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
  static int get transitionDuration => 300;

  static const ScrollPhysics scrollPhysics = BouncingScrollPhysics();

  static EdgeInsetsGeometry get authHorizontalPadding =>
      EdgeInsets.symmetric(horizontal: 25.w);
}
