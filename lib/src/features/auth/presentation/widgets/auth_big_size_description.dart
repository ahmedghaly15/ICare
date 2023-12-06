import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class AuthBigSizeDescription extends StatelessWidget {
  const AuthBigSizeDescription({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: AppTextStyles.textStyle15Bold,
      textAlign: TextAlign.center,
    );
  }
}
