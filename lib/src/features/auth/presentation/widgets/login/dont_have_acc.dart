import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';

class DontHavAcc extends StatelessWidget {
  const DontHavAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppStrings.dontHavAcc,
          style: AppTextStyles.textStyle16Light,
        ),
        TextButton(
          onPressed: () => context.pushRoute(const RegisterRoute()),
          child: Text(
            AppStrings.registerHere,
            style: AppTextStyles.textStyle16Bold.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
