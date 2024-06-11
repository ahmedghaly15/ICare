import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.enabled,
    this.onChanged,
    this.hasShadow = true,
    this.borderSide = BorderSide.none,
    this.autofocus = false,
  });

  final bool? enabled;
  final TextEditingController? controller;
  final String hintText;
  final Function(String)? onChanged;
  final bool hasShadow;
  final BorderSide borderSide;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      autofocus: autofocus,
      enabled: enabled,
      controller: controller,
      fillColor: context.isDarkModeActive ? AppColors.lightBlue : Colors.white,
      boxShadow: hasShadow
          ? <BoxShadow>[
              BoxShadow(
                offset: Offset(5.w, 4.h),
                blurRadius: 20.r,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.13),
              ),
            ]
          : null,
      borderSide: borderSide,
      maxLines: null,
      keyboardType: TextInputType.multiline,
      contentPadding: EdgeInsets.all(16.h),
      textCapitalization: TextCapitalization.sentences,
      hintText: hintText,
      onChanged: onChanged,
    );
  }
}
