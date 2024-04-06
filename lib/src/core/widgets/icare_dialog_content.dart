import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/positioned_app_icon.dart';

class ICareDialogContent extends StatelessWidget {
  const ICareDialogContent({
    super.key,
    required this.child,
    this.backgroundColor,
    this.boxShadow,
    this.gradient,
    this.appLogoBoxShadow,
  });

  final Color? backgroundColor;
  final Widget child;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final List<BoxShadow>? appLogoBoxShadow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: 16.w,
            left: 16.w,
            top: 24.h,
            bottom: 8.h,
          ),
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(AppConstants.radius25.r),
            ),
            boxShadow: boxShadow,
            gradient: gradient,
          ),
          child: child,
        ),
        PositionedAppIcon(boxShadow: appLogoBoxShadow),
      ],
    );
  }
}
