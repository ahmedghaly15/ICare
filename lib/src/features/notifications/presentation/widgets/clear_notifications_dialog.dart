import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/functions/is_dark_mode_active.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/outlined_cancel_button.dart';
import 'package:icare/src/core/widgets/primary_button.dart';

class ClearNotificationsDialog extends StatelessWidget {
  const ClearNotificationsDialog({
    super.key,
    required this.text,
    required this.clearButtonText,
    required this.onDeleteTapped,
  });

  final String text, clearButtonText;
  final VoidCallback onDeleteTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: isDarkModeActive(context) ? Colors.white : Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        MySizedBox.height20,
        Row(
          children: <Widget>[
            const Expanded(child: OutlinedCancelButton()),
            MySizedBox.width15,
            Expanded(
              child: PrimaryButton(
                onPressed: onDeleteTapped,
                text: clearButtonText,
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
