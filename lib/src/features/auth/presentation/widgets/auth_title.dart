import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.textStyle20Bold.copyWith(
        color: AppColors.fontPrimaryColor,
      ),
    );
  }
}
