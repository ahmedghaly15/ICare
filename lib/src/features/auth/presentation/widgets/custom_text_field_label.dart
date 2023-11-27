import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class CustomTextFieldLabel extends StatelessWidget {
  const CustomTextFieldLabel({
    super.key,
    required this.label,
    this.hasBottomMargin = true,
  });

  final String label;
  final bool hasBottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35.w, bottom: hasBottomMargin ? 7.h : 0),
      child: Text(
        label,
        style: AppTextStyles.textStyle16Bold.copyWith(
          color: AppColors.fontPrimaryColor,
        ),
      ),
    );
  }
}
