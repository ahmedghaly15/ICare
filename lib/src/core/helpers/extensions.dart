import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';

extension DarkThemeExtension on BuildContext {
  /// Checks if the dark mode is active in the current theme.
  ///
  /// This getter returns a boolean indicating whether the current theme's brightness
  /// is set to dark mode.
  ///
  /// Returns:
  /// - `bool`: `true` if the dark mode is active, `false` otherwise.
  ///
  /// Example:
  /// ```dart
  /// bool darkMode = context.isDarkModeActive;
  /// if (darkMode) {
  ///   print('Dark mode is active');
  /// } else {
  ///   print('Light mode is active');
  /// }
  /// ```
  bool get isDarkModeActive => Theme.of(this).brightness == Brightness.dark;
}

extension ShowICareDialogExtension on BuildContext {
  /// Displays a custom dialog with various customization options.
  ///
  /// This method shows a general dialog with optional parameters for state, message,
  /// background blur, title, custom child widget, padding, box shadow for the logo,
  /// background color, and gradient.
  ///
  /// The dialog can be either a predefined `ICareDialog` based on the provided state,
  /// or a custom child widget if specified.
  ///
  /// Parameters:
  /// - [state] (`ICareDialogStates?`): An optional state for the dialog which can determine the title if `anotherTitle` is not provided.
  /// - [message] (`String?`): An optional message to be displayed in the dialog.
  /// - [isBlurred] (`bool`): Determines whether the background should be blurred. Defaults to `true`.
  /// - [anotherTitle] (`String?`): An optional custom title for the dialog. If not provided, a title will be chosen based on the state.
  /// - [child] (`Widget?`): An optional custom child widget to be displayed in the dialog instead of the predefined content.
  /// - [padding] (`EdgeInsetsGeometry?`): Optional padding for the dialog content.
  /// - [appLogoBoxShadow] (`List<BoxShadow>?`): An optional list of box shadows for the app logo.
  /// - [backgroundColor] (`Color`): The background color of the dialog. Defaults to `Colors.white`.
  /// - [gradient] (`Gradient?`): An optional gradient for the dialog background.
  ///
  /// Returns:
  /// - `Future`: A future that completes when the dialog is dismissed.
  ///
  /// Example:
  /// ```dart
  /// context.showICareDialog(
  ///   state: ICareDialogStates.success,
  ///   message: 'Operation successful',
  /// );
  /// ```
  Future showICareDialog({
    ICareDialogStates? state,
    String? message,
    bool isBlurred = true,
    String? anotherTitle,
    Widget? child,
    EdgeInsetsGeometry? padding,
    List<BoxShadow>? appLogoBoxShadow,
    Color backgroundColor = Colors.white,
    Gradient? gradient,
  }) async {
    return await showGeneralDialog(
      context: this,
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
                title: anotherTitle ?? chooseDialogTitle(state!),
                message: message,
                backgroundColor: backgroundColor,
                appLogoBoxShadow: appLogoBoxShadow,
                gradient: gradient,
              )
            : ICareDialog(
                animation1: animation1,
                isBlurred: isBlurred,
                padding: padding,
                backgroundColor: backgroundColor,
                appLogoBoxShadow: appLogoBoxShadow,
                gradient: gradient,
                child: child,
              );
      },
    );
  }
}

extension ShowICareDialogErrorDialog on BuildContext {
  /// Displays an error dialog with a custom error message.
  ///
  /// This method shows a general dialog with a predefined error state and a custom
  /// error message. It uses the `showICareDialog` method with the error state and
  /// the provided message. The background can be blurred based on the optional
  /// parameter.
  ///
  /// Parameters:
  /// - [error] (`String`): The error message to be displayed in the dialog.
  /// - [isBlurred] (`bool`): Determines whether the background should be blurred. Defaults to `true`.
  ///
  /// Returns:
  /// - `Future<dynamic>`: A future that completes when the dialog is dismissed.
  ///
  /// Example:
  /// ```dart
  /// context.showICareDialogError('An unexpected error occurred');
  /// ```
  Future<dynamic> showICareDialogError(
    String error, {
    bool isBlurred = true,
  }) {
    return showICareDialog(
      state: ICareDialogStates.error,
      message: error,
      isBlurred: isBlurred,
    );
  }
}
