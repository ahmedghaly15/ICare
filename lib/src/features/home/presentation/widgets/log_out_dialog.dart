import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/outlined_cancel_button.dart';
import 'package:icare/src/features/home/presentation/widgets/log_out_button_bloc_listener.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          AppStrings.sureToLogoutQuestion,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height20,
        const Row(
          children: <Widget>[
            Expanded(
              child: OutlinedCancelButton(),
            ),
            MySizedBox.width15,
            Expanded(child: LogoutButtonBlocListener()),
          ],
        ),
      ],
    );
  }
}
