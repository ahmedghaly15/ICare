import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/custom_divider.dart';

class OrLogWith extends StatelessWidget {
  const OrLogWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomDivider(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 22.w),
          child: Text(
            'Or log with',
            style: AppTextStyles.textStyle16Medium(context).copyWith(
              color: const Color(0xff7B7B7B),
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
