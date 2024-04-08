import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class CustomTitleContainer extends StatelessWidget {
  const CustomTitleContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      margin: EdgeInsets.symmetric(vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.gradientOrange.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: child,
    );
  }
}
