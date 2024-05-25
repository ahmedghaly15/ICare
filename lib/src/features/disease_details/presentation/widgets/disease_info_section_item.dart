import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class DiseaseInfoSectionItem extends StatelessWidget {
  const DiseaseInfoSectionItem({
    super.key,
    required this.index,
    required this.title,
    required this.isActive,
    required this.onPressed,
  });

  final int index;
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.r)),
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: index == 0 ? 10.w : 0,
          right: index == 3 ? 10.w : 0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primaryColor
              : (isDarkModeActive(context)
                  ? AppColors.lightBlue
                  : AppColors.lightGrey),
          borderRadius: BorderRadius.all(Radius.circular(50.r)),
        ),
        child: Text(
          title,
          style: AppTextStyles.textStyle10Bold.copyWith(
            color: isActive
                ? Colors.white
                : (isDarkModeActive(context) ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}
