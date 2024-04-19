import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.backgroundColor,
    this.textColor,
    this.hasShadow = true,
    this.width,
    this.height,
    this.padding,
  });

  final String? text;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onPressed;
  final bool hasShadow;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w ?? double.infinity,
      height: height?.h ?? 50.0.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadiusDirectional.circular(borderRadius ?? 50.0.r),
        boxShadow: hasShadow
            ? <BoxShadow>[
                AppConstants.primaryBoxShadow,
              ]
            : null,
      ),
      child: MaterialButton(
        padding: padding,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadiusDirectional.circular(borderRadius ?? 50.0.r),
        ),
        child: child ??
            Text(
              text!,
              style: textStyle ??
                  AppTextStyles.textStyle24Medium.copyWith(
                    color: textColor ?? Colors.white,
                  ),
            ),
      ),
    );
  }
}
