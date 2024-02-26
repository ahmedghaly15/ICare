import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class CustomTextFieldLabel extends StatelessWidget {
  const CustomTextFieldLabel({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35.w, bottom: 7.h),
      child: Text(
        label,
        style: AppTextStyles.textStyle16Bold(context),
      ),
    );
  }
}
