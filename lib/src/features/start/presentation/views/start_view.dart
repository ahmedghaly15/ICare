import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/start/presentation/widgets/faded_widget.dart';

@RoutePage()
class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          FadedWidget(
            child: Image.asset(
              AppAssets.imagesStart,
              fit: BoxFit.cover,
              height: SizeConfig.height,
              width: SizeConfig.width,
            ),
          ),
          FadedWidget(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
                bottom: 24.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  PrimaryButton(
                    text: AppStrings.login,
                    onPressed: () => context.pushRoute(const LoginRoute()),
                  ),
                  MySizedBox.height8,
                  PrimaryButton(
                    text: AppStrings.register,
                    textColor: AppColors.primaryColor,
                    onPressed: () => context.pushRoute(const RegisterRoute()),
                    backgroundColor: AppColors.secondaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
