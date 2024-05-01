import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class AuthSmallSizeDescription extends StatelessWidget {
  const AuthSmallSizeDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: AppTextStyles.textStyle13Light.copyWith(
        color: isDarkModeActive(context) ? Colors.white : Colors.black,
      ),
    );
  }
}
