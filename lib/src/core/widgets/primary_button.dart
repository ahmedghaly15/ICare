import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.hasShadow = true,
  });

  final String text;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() onPressed;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadiusDirectional.circular(borderRadius ?? 50.0.r),
        boxShadow: hasShadow
            ? <BoxShadow>[
                BoxShadow(
                  offset: Offset(0.w, 4.h),
                  blurRadius: 4.w,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.25),
                ),
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              AppTextStyles.textStyle24Medium(context).copyWith(
                color: textColor ?? Colors.white,
              ),
        ),
      ),
    );
  }
}
