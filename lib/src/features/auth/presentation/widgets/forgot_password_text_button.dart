import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        onTap: () => context.pushRoute(const ForgotPasswordRoute()),
        child: Text(
          'Forgot Password?',
          style: AppTextStyles.textStyle13Light.copyWith(
            color: AppColors.fontPrimaryColor,
          ),
        ),
      ),
    );
  }
}
