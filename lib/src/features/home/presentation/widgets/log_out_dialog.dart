import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
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
        MySizedBox.height8,
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
                onPressed: () => context.maybePop(),
                text: AppStrings.cancel,
                border: Border.all(
                  color: AppColors.primaryColor,
                  width: 1.w,
                ),
                backgroundColor: isDarkModeActive(context)
                    ? AppColors.scaffoldDarkModeBackgroundColor
                    : Colors.white,
                textColor: AppColors.primaryColor,
                hasShadow: false,
                borderRadius: 16,
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
