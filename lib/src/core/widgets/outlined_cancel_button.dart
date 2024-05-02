import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';

class OutlinedCancelButton extends StatelessWidget {
  const OutlinedCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      isOutlined: true,
      onPressed: () => context.maybePop(),
      text: AppStrings.cancel,
      hasShadow: false,
      fontSize: 16,
    );
  }
}
