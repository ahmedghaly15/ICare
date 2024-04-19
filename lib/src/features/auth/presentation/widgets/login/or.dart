import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_divider.dart';

class Or extends StatelessWidget {
  const Or({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomDivider(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            AppStrings.or,
            style: AppTextStyles.textStyle16Medium.copyWith(
              color: AppColors.greyColor,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
