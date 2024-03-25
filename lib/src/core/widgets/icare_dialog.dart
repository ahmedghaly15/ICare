import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';

enum ICareDialogStates { warning, success, error }

class ShowICareDialog {
  static Future show({
    required BuildContext context,
    required ICareDialogStates state,
    required String message,
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
  });

  final Animation<double> animation1;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedDialog(
      animation1: animation1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.textStyle18Bold(context),
          ),
          SizedBox(height: 8.h),
          Flexible(
            child: Text(
              message,
              style: AppTextStyles.textStyle15Bold(context),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16.h),
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
