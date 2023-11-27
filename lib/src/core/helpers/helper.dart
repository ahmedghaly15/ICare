import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper {
  static String? validatePasswordField(String? value) {
    if (value!.isEmpty) {
      return "Password can't be blank";
    } else if (value.length < 6) {
      return "Password must be more than 5 characters";
    }

    return null;
  }

  static String? validateEmailField(String? value) {
    if (value!.isNotEmpty && !EmailValidator.validate(value)) {
      return "Enter a valid mail";
    }
    return null;
  }

  static String? validateNameField(String? value) {
    if (value!.isEmpty) {
      return "Name can't be blank";
    }
    if (value.length < 6) {
      return "Name must be more than 5 character";
    }
    return null;
  }

  static String? validateConfirmPasswordField({
    String? value,
    required String password,
    required String confirmPassword,
  }) {
    if (value!.isEmpty) {
      return "Confirm password can't be blank";
    } else if (password != confirmPassword) {
      return "Doesn't match password";
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
}
