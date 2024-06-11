import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/config/themes/themes_cubit.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/action_dialog.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/home/presentation/widgets/log_out_button_bloc_listener.dart';

class SwitchThemeAndSignOutButtons extends StatelessWidget {
  const SwitchThemeAndSignOutButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MySizedBox.height10,
        const Spacer(),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Text(
            AppStrings.darkMode,
            style: AppTextStyles.textStyle13Bold.copyWith(
              color: context.isDarkModeActive ? Colors.white : Colors.black,
            ),
          ),
          trailing: Switch(
            value: context.isDarkModeActive ? true : false,
            onChanged: (_) {
              context.read<ThemesCubit>().toggleTheme();
            },
            activeColor: Colors.white,
            activeTrackColor: AppColors.primaryColor,
          ),
        ),
        MaterialButton(
          onPressed: () {
            ShowICareDialog.show(
              context: context,
              child: const ActionDialog(
                text: AppStrings.sureToLogoutQuestion,
                actionButtonWidget: LogoutButtonBlocListener(),
              ),
            );
          },
          padding: EdgeInsets.zero,
          minWidth: 0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          splashColor: Colors.red.withOpacity(0.5),
          child: ListTile(
            splashColor: Colors.red,
            hoverColor: Colors.red,
            contentPadding: EdgeInsets.zero,
            leading: Text(
              AppStrings.logOut,
              style: AppTextStyles.textStyle13Bold.copyWith(
                color: Colors.red,
              ),
            ),
            trailing: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
