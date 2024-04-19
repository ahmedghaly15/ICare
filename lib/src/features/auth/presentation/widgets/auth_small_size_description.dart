import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

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
      style: AppTextStyles.textStyle13Light,
    );
  }
}
