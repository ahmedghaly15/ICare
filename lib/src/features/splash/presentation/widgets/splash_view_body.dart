import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/splash/presentation/widgets/faded_widget.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        FadedWidget(
          child: Image.asset(
            AppAssets.imagesSplash,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        FadedWidget(
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.0.w,
              right: 24.0.w,
              bottom: 16.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                PrimaryButton(
                  text: 'Login',
                  onPressed: () => context.pushRoute(const LoginRoute()),
                  hasShadow: false,
                ),
                SizedBox(height: 8.h),
                PrimaryButton(
                  text: 'Register',
                  textColor: AppColors.primaryColor,
                  onPressed: () => context.pushRoute(const RegisterRoute()),
                  backgroundColor: AppColors.secondaryColor,
                  hasShadow: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
