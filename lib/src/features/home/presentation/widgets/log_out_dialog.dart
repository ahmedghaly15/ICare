import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
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
          style: AppTextStyles.textStyle15Bold,
          textAlign: TextAlign.center,
        ),
        MySizedBox.height20,
        Row(
          children: <Widget>[
            Expanded(
              child: PrimaryButton(
                isOutlined: true,
                onPressed: () => context.maybePop(),
                text: AppStrings.cancel,
                hasShadow: false,
                fontSize: 16,
              ),
            ),
            MySizedBox.width15,
            const Expanded(child: LogoutButtonBlocListener()),
          ],
        ),
      ],
    );
  }
}
