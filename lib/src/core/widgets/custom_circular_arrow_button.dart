import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/size_config.dart';

class CustomCircularArrowButton extends StatelessWidget {
  const CustomCircularArrowButton({
    super.key,
    this.icon = Icons.arrow_back_ios_new,
    this.size = 16,
    this.onPressed,
  });

  final IconData icon;
  final double size;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h, right: 8.w),
      height: SizeConfig.height * 0.04,
      width: SizeConfig.height * 0.04,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed ?? () => context.maybePop(),
        shape: const CircleBorder(),
        child: Icon(
          icon,
          color: Colors.white,
          size: size.h,
        ),
      ),
    );
  }
}
