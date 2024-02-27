import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class CustomSocialIconButton extends StatelessWidget {
  const CustomSocialIconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 35.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.secondaryColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Image.asset(
          icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
