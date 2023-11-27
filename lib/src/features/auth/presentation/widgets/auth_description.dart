import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class AuthDescription extends StatelessWidget {
  const AuthDescription({
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
