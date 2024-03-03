import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ValidationRow(
            text: 'At least 1 lowercase letter', hasValidated: hasLowercase),
        MySizedBox.height2,
        ValidationRow(
            text: 'At least 1 uppercase letter', hasValidated: hasUppercase),
        MySizedBox.height2,
        ValidationRow(
            text: 'At least 1 special character',
            hasValidated: hasSpecialCharacters),
        MySizedBox.height2,
        ValidationRow(text: 'At least 1 number', hasValidated: hasNumber),
        MySizedBox.height2,
        ValidationRow(
            text: 'At least 8 characters long', hasValidated: hasMinLength),
      ],
    );
  }
}

class ValidationRow extends StatelessWidget {
  const ValidationRow({
    super.key,
    required this.text,
    required this.hasValidated,
  });

  final String text;
  final bool hasValidated;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor:
              hasValidated ? AppColors.primaryColor : AppColors.greyColor,
        ),
        MySizedBox.width6,
        Text(
          text,
          style: AppTextStyles.textStyle13Regular(context).copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: AppColors.primaryColor,
            decorationThickness: 2,
            color: hasValidated ? AppColors.primaryColor : AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
