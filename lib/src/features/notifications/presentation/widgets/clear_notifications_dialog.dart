import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/outlined_cancel_button.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_cubit.dart';

class ClearNotificationsDialog extends StatelessWidget {
  const ClearNotificationsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          AppStrings.sureToClearNotificationsHistory,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height20,
        Row(
          children: <Widget>[
            const Expanded(
              child: OutlinedCancelButton(),
            ),
            MySizedBox.width15,
            Expanded(
              child: PrimaryButton(
                onPressed: () {
                  context
                      .read<NotificationsCubit>()
                      .clearNotificationsHistory();
                  context.maybePop();
                },
                text: AppStrings.clear,
                hasShadow: false,
                borderRadius: AppConstants.outlinedButtonBorderRadiusVal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
