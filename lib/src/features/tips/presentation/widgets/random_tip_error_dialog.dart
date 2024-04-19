import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

class RandomTipErrorDialog extends StatelessWidget {
  const RandomTipErrorDialog({
    super.key,
    required this.error,
  });

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        MySizedBox.height8,
        Text(
          error,
          style: AppTextStyles.textStyle16Bold,
          textAlign: TextAlign.center,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () => context.maybePop(),
            child: Text(
              AppStrings.done,
              style: AppTextStyles.textStyle14Medium.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
