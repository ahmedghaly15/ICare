import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

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
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isDarkModeActive(context)
            ? AppColors.lightBlue
            : AppColors.secondaryColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
