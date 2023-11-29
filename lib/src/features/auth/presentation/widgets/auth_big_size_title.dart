import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class AuthBigSizTitle extends StatelessWidget {
  const AuthBigSizTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 13.h),
      alignment: AlignmentDirectional.center,
      child: Text(
        title,
        style: AppTextStyles.textStyle25Bold.copyWith(
          color: AppColors.fontPrimaryColor,
        ),
      ),
    );
  }
}
