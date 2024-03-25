import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/tips/presentation/widgets/random_tip_dialog.dart';

class ShowRandomTipDialog {
  static Future show(BuildContext context) async {
    return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: AppColors.secondWhiteColor.withOpacity(0.4),
      pageBuilder: (context, _, __) => const SizedBox.shrink(),
      transitionDuration: AppConstants.dialogsTransitionDuration,
      transitionBuilder: (context, animation1, animation2, widget) {
        return RandomTipDialog(animation1: animation1);
      },
    );
  }
}
