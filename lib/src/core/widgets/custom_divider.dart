import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(color: AppColors.greyColor),
    );
  }
}
