import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

enum ICareDialogStates { warning, success, error }

class ShowICareDialog {
  static Future show({
    required BuildContext context,
    required ICareDialogStates state,
    required String message,
    bool isBlurred = true,
  }) async {
    return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox.shrink(),
      transitionDuration: AppConstants.dialogsTransitionDuration,
      transitionBuilder: (context, animation1, animation2, widget) {
        return ICareDialog(
          animation1: animation1,
          isBlurred: isBlurred,
          title: _chooseDialogTitle(state),
          message: message,
        );
      },
    );
  }

  static String _chooseDialogTitle(
    ICareDialogStates state,
  ) {
    String title;

    switch (state) {
      case ICareDialogStates.error:
        title = 'Opps!';
        break;
      case ICareDialogStates.warning:
        title = 'Warning';
        break;

      case ICareDialogStates.success:
        title = 'Success!';
        break;
    }

    return title;
  }
}

class ICareDialog extends StatelessWidget {
  const ICareDialog({
    super.key,
    required this.animation1,
    required this.title,
    required this.message,
    this.isBlurred = true,
  });

  final Animation<double> animation1;
  final String title;
  final String message;
  final bool isBlurred;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedDialog(
      animation1: animation1,
      isBlurred: isBlurred,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          MySizedBox.height8,
          Text(
            title,
            style: AppTextStyles.textStyle18Bold(context),
          ),
          MySizedBox.height8,
          Flexible(
            child: Text(
              message,
              style: AppTextStyles.textStyle15Bold(context),
              textAlign: TextAlign.center,
            ),
          ),
          MySizedBox.height18,
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => context.maybePop(),
              child: Text(
                AppStrings.done,
                style: AppTextStyles.textStyle16Medium(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
