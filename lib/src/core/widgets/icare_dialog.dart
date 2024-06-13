import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';

enum ICareDialogStates { warning, success, error }

String chooseDialogTitle(ICareDialogStates state) {
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

class ICareDialog extends StatelessWidget {
  const ICareDialog({
    super.key,
    required this.animation1,
    this.title,
    this.message,
    this.isBlurred = true,
    this.child,
    this.padding,
    this.appLogoBoxShadow,
    this.backgroundColor,
    this.gradient,
  });

  final Animation<double> animation1;
  final String? title;
  final String? message;
  final bool isBlurred;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final List<BoxShadow>? appLogoBoxShadow;
  final Color? backgroundColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedDialog(
      animation1: animation1,
      isBlurred: isBlurred,
      padding: padding,
      appLogoBoxShadow: appLogoBoxShadow,
      backgroundColor: backgroundColor,
      gradient: gradient,
      child: child ??
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title!,
                style: AppTextStyles.textStyle15Bold.copyWith(
                  color: context.isDarkModeActive ? Colors.white : Colors.black,
                ),
              ),
              MySizedBox.height8,
              Flexible(
                child: Text(
                  message!,
                  style: AppTextStyles.textStyle13Regular.copyWith(
                    color:
                        context.isDarkModeActive ? Colors.white : Colors.black,
                  ),
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
