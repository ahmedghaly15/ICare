import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.label,
    this.hintText,
    this.onSubmit,
    this.borderRadius,
    this.enableBorderColor,
    this.onSaved,
    this.autofillHints,
    this.isEmail = false,
    this.enabled,
    this.textAlign,
    this.maxLength,
    this.onChanged,
    this.contentPadding,
    this.onTap,
    this.focusNode,
    this.onEditingComplete,
    this.validating,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool isEmail;
  final bool? enabled;
  final String? label;
  final List<String>? autofillHints;
  final TextCapitalization textCapitalization;
  final Function(String submittedText)? onSubmit;
  final Function(String? value)? onSaved;
  final void Function()? onTap;
  final String? hintText;
  final TextAlign? textAlign;
  final double? borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final Color? enableBorderColor;
  final int? maxLength;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validating;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0.w, 4.h),
            blurRadius: 4.w,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        enabled: enabled ?? true,
        textCapitalization: textCapitalization,
        textAlign: textAlign ?? TextAlign.start,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: obscureText ?? false,
        maxLength: maxLength,
        onSaved: onSaved,
        onTap: onTap,
        autofillHints: autofillHints,
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
        style: AppTextStyles.textStyle13Light,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.secondaryColor,
          errorStyle: AppTextStyles.textStyle13Light.copyWith(
            color: Colors.red,
          ),
          hintText: hintText,
          errorMaxLines: 1,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: label,
          labelStyle: Theme.of(context).textTheme.titleSmall,
          contentPadding: contentPadding ??
              EdgeInsets.only(
                top: 15.h,
                bottom: 15.h,
                left: 35.w,
                right: 15.w,
              ),
          enabledBorder:
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          focusedBorder:
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          errorBorder:
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          focusedErrorBorder:
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          border:
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
        ),
        validator: validating,
        onEditingComplete: onEditingComplete,
      ),
    );
  }

  OutlineInputBorder _buildOutlinedInputBorder(BuildContext context,
      {double? borderRadius}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 50.0.r),
      borderSide: BorderSide(
        width: 1.w,
        color: Colors.black.withOpacity(0.13),
      ),
    );
  }
}
