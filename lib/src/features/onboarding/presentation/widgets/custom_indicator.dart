import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppConstants.onboardingScrollingDuration,
      width: 15.h,
      height: 15.h,
      margin: EdgeInsets.only(right: 10.w),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : AppColors.lightGrey,
        shape: BoxShape.circle,
      ),
    );
  }
}
