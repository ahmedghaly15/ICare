import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

enum ICareDialogStates { warning, success, error }

class ShowICareDialog {
  static Future show({
    required BuildContext context,
    ICareDialogStates? state,
    String? message,
    bool isBlurred = true,
    String anotherTitle = '',
    Widget? child,
    EdgeInsetsGeometry? padding,
  }) async {
    return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox.shrink(),
      transitionDuration: AppConstants.dialogsTransitionDuration,
      transitionBuilder: (context, animation1, animation2, widget) {
        return child == null
            ? ICareDialog(
                animation1: animation1,
                isBlurred: isBlurred,
                padding: padding,
                title: _chooseDialogTitle(state!),
                message: message,
              )
            : ICareDialog(
                animation1: animation1,
                isBlurred: isBlurred,
                padding: padding,
                child: child,
              );
      },
    );
  }

  static String _chooseDialogTitle(ICareDialogStates state) {
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

  static Future<dynamic> showICareDialogError(
    BuildContext context,
    String error, {
    bool isBlurred = true,
  }) {
    return show(
      context: context,
      state: ICareDialogStates.error,
      message: error,
      isBlurred: isBlurred,
    );
  }
}

class ICareDialog extends StatelessWidget {
  const ICareDialog({
    super.key,
    required this.animation1,
    this.title,
    this.message,
    this.isBlurred = true,
    this.child,
    this.padding,
  });

  final Animation<double> animation1;
  final String? title;
  final String? message;
  final bool isBlurred;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedDialog(
      animation1: animation1,
      isBlurred: isBlurred,
      padding: padding,
      child: child ??
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MySizedBox.height8,
              Text(
                title!,
                style: AppTextStyles.textStyle16Bold,
              ),
              MySizedBox.height8,
              Flexible(
                child: Text(
                  message!,
                  style: AppTextStyles.textStyle13Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              MySizedBox.height18,
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => context.maybePop(),
                  child: const Text(AppStrings.done),
                ),
              ),
            ],
          ),
    );
  }
}
