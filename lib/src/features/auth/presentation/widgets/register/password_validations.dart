import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
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
        _validationRow(
          context,
          'At least 1 lowercase letter',
          hasLowercase,
        ),
        MySizedBox.height2,
        _validationRow(
          context,
          'At least 1 uppercase letter',
          hasUppercase,
        ),
        MySizedBox.height2,
        _validationRow(
          context,
          'At least 1 special character',
          hasSpecialCharacters,
        ),
        MySizedBox.height2,
        _validationRow(
          context,
          'At least 1 number',
          hasNumber,
        ),
        MySizedBox.height2,
        _validationRow(
          context,
          'At least 8 characters long',
          hasMinLength,
        ),
      ],
    );
  }
}

Widget _validationRow(BuildContext context, String text, bool hasValidated) {
  return Row(
    children: [
      CircleAvatar(
        radius: 2.5.r,
        backgroundColor: hasValidated
            ? AppColors.primaryColor
            : (isDarkModeActive(context)
                ? Colors.white70
                : AppColors.greyColor),
      ),
      MySizedBox.width6,
      Text(
        text,
        style: AppTextStyles.textStyle13Regular.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: AppColors.primaryColor,
          decorationThickness: 2,
          color: hasValidated
              ? AppColors.primaryColor
              : (isDarkModeActive(context)
                  ? Colors.white70
                  : AppColors.greyColor),
        ),
      ),
    ],
  );
}
