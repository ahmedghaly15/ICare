import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class GradientColorfulContainer extends StatelessWidget {
  const GradientColorfulContainer({
    super.key,
    required this.child,
    this.radiusVal = 25,
  });

  final Widget child;
  final double radiusVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 18.h,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 18.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radiusVal.r),
        gradient: LinearGradient(
          colors: <Color>[
            AppColors.primaryColor,
            AppColors.primaryColor.withOpacity(0.25),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
