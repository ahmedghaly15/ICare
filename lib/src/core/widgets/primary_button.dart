import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

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
                Helper.buildBoxShadow(),
              ]
            : null,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              AppTextStyles.primaryButtonTextStyle.copyWith(
                color: textColor ?? Colors.white,
              ),
        ),
      ),
    );
  }
}
