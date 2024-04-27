import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_circular_arrow_button.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CustomCircularArrowButton(size: 16),
        const Spacer(),
        Column(
          children: <Widget>[
            Image.asset(
              AppAssets.imagesAppLogo,
              height: SizeConfig.height * 0.15,
              width: SizeConfig.height * 0.15,
              fit: BoxFit.contain,
            ),
            Text(
              AppStrings.appTitle,
              style: AppTextStyles.textStyle30Bold.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
