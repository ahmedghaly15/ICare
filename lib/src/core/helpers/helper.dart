import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_snack_bar.dart';

class Helper {
  static String? validatePasswordField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      CustomSnackBar.show(
        context: context,
        message: "Password can't be blank!",
        state: CustomSnackBarStates.warning,
      );
    } else if (value.length < 6) {
      CustomSnackBar.show(
        context: context,
        message: "Password must be more than 5 characters",
        state: CustomSnackBarStates.warning,
      );
    }

    return null;
  }

  static String? validateEmailField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      CustomSnackBar.show(
        context: context,
        message: "Email can't be blank!",
        state: CustomSnackBarStates.warning,
      );
    }
    if (!value.contains('@')) {
      CustomSnackBar.show(
        context: context,
        message: "Write a valid email",
        state: CustomSnackBarStates.warning,
      );
    }
    return null;
  }

  static String? validateNameField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      CustomSnackBar.show(
        context: context,
        message: "Name can't be blank!",
        state: CustomSnackBarStates.warning,
      );
    }
    if (value.length < 3) {
      CustomSnackBar.show(
        context: context,
        message: "Name must be more than 3 characters",
        state: CustomSnackBarStates.warning,
      );
    }
    return null;
  }

  static String? validateConfirmPasswordField(
    BuildContext context, {
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty) {
      CustomSnackBar.show(
        context: context,
        message: "Confirm password can't be blank!",
        state: CustomSnackBarStates.warning,
      );
    } else if (password != confirmPassword) {
      CustomSnackBar.show(
        context: context,
        message: "Doesn't match password",
        state: CustomSnackBarStates.warning,
      );
    }

    return null;
  }

  static BoxShadow buildBoxShadow() {
    return BoxShadow(
      offset: Offset(0.w, 4.h),
      blurRadius: 4.w,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.25),
    );
  }

  static void keyboardUnfocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static void requestFocus(BuildContext context, FocusNode focusNode) =>
      FocusScope.of(context).requestFocus(focusNode);
}
