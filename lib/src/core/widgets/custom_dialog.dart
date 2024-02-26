import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/positined_app_icon.dart';

enum CustomDialogStates { warning, success, error }

class CustomDialog {
  static void show({
    required BuildContext context,
    required CustomDialogStates state,
    required String message,
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, _, __) => const SizedBox(),
      transitionDuration: const Duration(milliseconds: 200),
      transitionBuilder: (context, animation1, animation2, widget) {
        return Material(
          type: MaterialType.transparency,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
            child: FadeTransition(
              opacity: Tween<double>(begin: 0.5, end: 1.0).animate(animation1),
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        right: 16.w,
                        left: 16.w,
                        top: 24.h,
                        bottom: 8.h,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 24.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24.r)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            _chooseSnackBarTitle(state),
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
                              onPressed: () => context.popRoute(),
                              child: Text(
                                'Done',
                                style: AppTextStyles.textStyle16Medium(context)
                                    .copyWith(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const PositionedAppIcon(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static String _chooseSnackBarTitle(
    CustomDialogStates state,
  ) {
    String title;

    switch (state) {
      case CustomDialogStates.error:
        title = 'Opps!';
        break;
      case CustomDialogStates.warning:
        title = 'Warning';
        break;

      case CustomDialogStates.success:
        title = 'Success!';
        break;
    }

    return title;
  }
}
