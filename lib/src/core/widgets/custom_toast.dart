import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastStates { success, error, warning }

class CustomToast {
  static void showToast({
    required String text,
    required ToastStates state,
  }) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: _chooseToastColor(state),
      textColor: Colors.white,
      fontSize: 20.0.sp,
    );
  }

  static Color _chooseToastColor(ToastStates state) {
    Color color;
    switch (state) {
      case ToastStates.success:
        color = Colors.green;
        break;
      case ToastStates.error:
        color = Colors.red;
        break;
      case ToastStates.warning:
        color = Colors.amber;
        break;
    }
    return color;
  }
}
