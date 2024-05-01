import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class AuthMediumSizeTitle extends StatelessWidget {
  const AuthMediumSizeTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.textStyle20Bold.copyWith(
        color: isDarkModeActive(context) ? Colors.white : Colors.black,
      ),
    );
  }
}
