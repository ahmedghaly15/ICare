import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_animated_dialog.dart';
import 'package:icare/src/core/widgets/positioned_app_icon.dart';

enum ICareDialogStates { warning, success, error }

class ICareDialog {
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
        return CustomAnimatedDialog(
          animation1: animation1,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.r)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      _chooseDialogTitle(state),
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
                          'Done',
                          style:
                              AppTextStyles.textStyle16Medium(context).copyWith(
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
