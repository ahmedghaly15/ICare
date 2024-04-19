import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/config/themes/themes_cubit.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';

class SwitchThemeAndSignOutButtons extends StatelessWidget {
  const SwitchThemeAndSignOutButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Row(
          children: <Widget>[
            Text(
              AppStrings.darkMode,
              style: AppTextStyles.textStyle13Bold,
            ),
            const Spacer(),
            Switch(
              value: isDarkModeActive(context) ? true : false,
              onChanged: (_) {
                context.read<ThemesCubit>().toggleTheme();
              },
              activeColor: Colors.white,
              activeTrackColor: AppColors.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
