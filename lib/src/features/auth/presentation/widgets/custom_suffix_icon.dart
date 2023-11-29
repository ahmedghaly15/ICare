import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_colors.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    this.onTap,
    required this.icon,
  });

  final VoidCallback? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: 23.w),
      onPressed: onTap,
      icon: Icon(
        icon,
        color: AppColors.fontPrimaryColor,
        size: 20.w,
      ),
    );
  }
}
