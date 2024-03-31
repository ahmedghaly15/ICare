import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';

class SendMessageTextField extends StatelessWidget {
  const SendMessageTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.enabled,
    this.onChanged,
  });

  final bool? enabled;
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      enabled: enabled,
      controller: controller,
      fillColor: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: Offset(5.w, 4.h),
          blurRadius: 20.r,
          spreadRadius: 0,
          color: Colors.black.withOpacity(0.13),
        ),
      ],
      borderSide: BorderSide.none,
      maxLines: null,
      contentPadding: EdgeInsets.all(16.h),
      textCapitalization: TextCapitalization.sentences,
      hintText: hintText,
      onChanged: onChanged,
    );
  }
}
