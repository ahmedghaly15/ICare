import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.percent,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 50.r,
      percent: percent / 100,
      lineWidth: 8.w,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: AppColors.primaryColor,
      backgroundColor: Colors.transparent,
      animation: true,
      animationDuration: 800,
      fillColor: Colors.transparent,
      center: Text(
        '$percent %',
        style: AppTextStyles.textStyle20Bold(context).copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
