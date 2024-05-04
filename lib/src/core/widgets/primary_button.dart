import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

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
    this.border,
    this.isOutlined = false,
    this.fontSize,
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
  final BoxBorder? border;
  final bool isOutlined;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w ?? double.infinity,
      height: height?.h ?? 50.0.h,
      decoration: BoxDecoration(
        color: isOutlined
            ? (isDarkModeActive(context)
                ? AppColors.scaffoldDarkModeBackgroundColor
                : Colors.white)
            : backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadiusDirectional.circular(
          isOutlined
              ? AppConstants.outlinedButtonBorderRadiusVal
              : borderRadius ?? 50.0.r,
        ),
        boxShadow: hasShadow
            ? <BoxShadow>[
                AppUtils.primaryBoxShadow,
              ]
            : null,
        border: isOutlined
            ? Border.all(
                color: AppColors.primaryColor,
                width: 1.w,
              )
            : border,
      ),
      child: MaterialButton(
        padding: padding,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            isOutlined
                ? AppConstants.outlinedButtonBorderRadiusVal
                : borderRadius ?? 50.0.r,
          ),
        ),
        child: child ??
            FittedBox(
              child: Text(
                text!,
                style: textStyle ??
                    AppTextStyles.textStyle20Bold.copyWith(
                      fontSize: fontSize?.sp ?? 20.sp,
                      color: isOutlined
                          ? AppColors.primaryColor
                          : textColor ?? Colors.white,
                    ),
              ),
            ),
      ),
    );
  }
}
