import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/size_config.dart';

class CustomDiseaseDetailsContainer extends StatelessWidget {
  const CustomDiseaseDetailsContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10.w,
        left: 10.w,
        top: 10.h,
        bottom: SizeConfig.height * 0.1,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
        boxShadow: context.isDarkModeActive
            ? [
                AppUtils.primaryBoxShadow,
              ]
            : null,
        gradient: LinearGradient(
          colors: context.isDarkModeActive
              ? <Color>[
                  AppColors.darkOrange,
                  AppColors.deepBrown,
                ]
              : <Color>[
                  AppColors.gradientOrange.withOpacity(0.2),
                  Colors.white,
                ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
