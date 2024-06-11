import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';

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
    this.maxLines = 1,
    this.isEmail = false,
    this.enabled,
    this.textAlign,
    this.maxLength,
    this.onChanged,
    this.contentPadding,
    this.onTap,
    this.focusNode,
    this.onEditingComplete,
    this.textCapitalization = TextCapitalization.none,
    this.validating,
    this.fillColor,
    this.boxShadow,
    this.borderSide,
    this.enableSuggestions = true,
    this.filled,
    this.border,
    this.margin,
    this.hintStyle,
    this.style,
    this.autofocus = false,
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
  final int? maxLines;
  final Color? fillColor;
  final List<BoxShadow>? boxShadow;
  final BorderSide? borderSide;
  final bool enableSuggestions;
  final bool? filled;
  final InputBorder? border;
  final EdgeInsetsGeometry? margin;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(borderRadius ?? 50.0.r),
      ),
      child: TextFormField(
        autofocus: autofocus,
        enableSuggestions: enableSuggestions,
        enabled: enabled ?? true,
        controller: controller,
        focusNode: focusNode,
        maxLines: maxLines,
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
        style: style ?? _customTextFieldTextStyle(context),
        cursorColor: context.isDarkModeActive ? Colors.white : Colors.black,
        decoration: InputDecoration(
          filled: filled ?? true,
          fillColor: fillColor ??
              (context.isDarkModeActive
                  ? AppColors.lightBlue
                  : AppColors.secondaryColor),
          errorStyle: AppTextStyles.textStyle13Light.copyWith(
            color: Colors.red,
          ),
          hintText: hintText,
          hintStyle: hintStyle ?? _customTextFieldTextStyle(context),
          errorMaxLines: null,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          suffixIconColor:
              context.isDarkModeActive ? Colors.white : Colors.black,
          prefixIconColor:
              context.isDarkModeActive ? Colors.white : Colors.black,
          labelText: label,
          labelStyle: Theme.of(context).textTheme.titleSmall,
          contentPadding: contentPadding ??
              EdgeInsets.only(
                top: 15.h,
                bottom: 15.h,
                left: 35.w,
              ),
          enabledBorder: _borderIsNone
              ? border
              : _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          focusedBorder: _borderIsNone
              ? border
              : _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          errorBorder: _borderIsNone
              ? border
              : _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          focusedErrorBorder: _borderIsNone
              ? border
              : _buildOutlinedInputBorder(context, borderRadius: borderRadius),
          border: border ??
              _buildOutlinedInputBorder(context, borderRadius: borderRadius),
        ),
        validator: validating,
        onEditingComplete: onEditingComplete,
      ),
    );
  }

  bool get _borderIsNone => border == InputBorder.none;

  TextStyle _customTextFieldTextStyle(BuildContext context) {
    return AppTextStyles.textStyle10Regular.copyWith(
      color: context.isDarkModeActive ? Colors.white : Colors.black,
    );
  }

  OutlineInputBorder _buildOutlinedInputBorder(
    BuildContext context, {
    double? borderRadius,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 50.0.r),
      borderSide: borderSide ??
          BorderSide(
            width: 1.w,
            color: Colors.black.withOpacity(0.13),
          ),
    );
  }
}
