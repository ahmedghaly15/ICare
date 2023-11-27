import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/routes/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_text_styles.dart';
import 'package:icare/src/core/widgets/bottom_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_auth_app_bar.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/custom_social_icon.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/login_form.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/or_log_with.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: AppConstants.authHorizontalPadding,
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CustomAuthAppBar(),
                  const AuthTitle(title: 'Login'),
                  SizedBox(height: 7.h),
                  const AuthDescription(
                    description: 'Login and continue using the app',
                  ),
                  SizedBox(height: 25.h),
                  const LoginForm(),
                  SizedBox(height: 17.h),
                  const OrLogWith(),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomSocialButton(
                        icon: AppAssets.imagesFacebookLogo,
                        onPressed: () {},
                      ),
                      CustomSocialButton(
                        icon: AppAssets.imagesGoogleLogo,
                        onPressed: () {},
                      ),
                      CustomSocialButton(
                        icon: AppAssets.imagesXLogo,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: AppConstants.authHorizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 27.h),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: AppTextStyles.textStyle16Light,
                      ),
                      TextButton(
                        onPressed: () =>
                            context.pushRoute(const RegisterRoute()),
                        child: Text(
                          'Register here',
                          style: AppTextStyles.textStyle16Light.copyWith(
                            color: AppColors.fontPrimaryColor,
                          ),
                        ),
                      ),
                      const BottomSpacer(),
                    ],
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
