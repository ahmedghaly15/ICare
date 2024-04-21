import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class CustomTextButtonWithIcon extends StatelessWidget {
  const CustomTextButtonWithIcon({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.textStyle,
    this.backgroundColor,
    this.foregroundColor,
    this.style,
    this.padding,
    this.radiusVal,
  });

  final Widget icon;
  final Widget label;
  final TextStyle? textStyle;
  final Color? backgroundColor, foregroundColor;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final EdgeInsetsGeometry? padding;
  final double? radiusVal;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: style ??
          ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
              textStyle ?? AppTextStyles.textStyle20Bold,
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              backgroundColor ?? AppColors.primaryColor,
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.white;
                }
                return foregroundColor ?? Colors.white;
              },
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              padding ??
                  EdgeInsets.symmetric(
                    horizontal: 27.w,
                    vertical: 11.h,
                  ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radiusVal ?? 25.r),
              ),
            ),
          ),
      onPressed: onPressed,
      icon: icon,
      label: label,
    );
  }
}
