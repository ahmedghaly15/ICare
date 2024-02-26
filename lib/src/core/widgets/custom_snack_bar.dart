import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';

enum CustomSnackBarStates { warning, success }

class CustomSnackBar {
  static void show({
    required BuildContext context,
    required String message,
    required CustomSnackBarStates state,
    bool showCloseIcon = true,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        content: Row(
          children: <Widget>[
            Icon(
              state == CustomSnackBarStates.warning
                  ? Icons.warning_rounded
                  : Icons.check_circle,
              color: Colors.white,
              size: 40.w,
            ),
            SizedBox(width: 10.w),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    state == CustomSnackBarStates.warning
                        ? 'Warning'
                        : 'Success',
                    style: AppTextStyles.textStyle16Medium(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    message,
                    style: AppTextStyles.textStyle13Light(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        dismissDirection: DismissDirection.horizontal,
        showCloseIcon: showCloseIcon,
        closeIconColor: Colors.white,
        backgroundColor: _chooseToastColor(state),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }

  static Color _chooseToastColor(CustomSnackBarStates state) {
    Color color;
    switch (state) {
      case CustomSnackBarStates.success:
        color = Colors.green;
        break;

      case CustomSnackBarStates.warning:
        color = Colors.amber;
        break;
    }
    return color;
  }
}
