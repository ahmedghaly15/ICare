import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/outlined_cancel_button.dart';

class ActionDialog extends StatelessWidget {
  const ActionDialog({
    super.key,
    required this.text,
    required this.actionButtonWidget,
  });

  final String text;
  final Widget actionButtonWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: AppTextStyles.textStyle15Bold.copyWith(
            color: context.isDarkModeActive ? Colors.white : Colors.black,
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
            Expanded(child: actionButtonWidget),
          ],
        ),
      ],
    );
  }
}
