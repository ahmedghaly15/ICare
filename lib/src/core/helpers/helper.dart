import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper {
  static String? validatePasswordField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      return "Password can't be blank!";
    } else if (value.length < 6) {
      return "Password must be more than 5 characters";
    }

    return null;
  }

  static String? validateEmailField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      return "Email can't be blank!";
    }
    if (!value.contains('@')) {
      return "Write a valid email";
    }
    return null;
  }

  static String? validateNameField(BuildContext context, {String? value}) {
    if (value!.isEmpty) {
      return "Name can't be blank!";
    }
    if (value.length < 3) {
      return "Name must be more than 3 characters";
    }
    return null;
  }

  static String? validateConfirmPasswordField(
    BuildContext context, {
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty || password != confirmPassword) {
      return "Passwords don't match";
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
