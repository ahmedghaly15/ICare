import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_medium_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_small_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_auth_app_bar.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/login_form.dart';

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
                  const AuthMediumSizeTitle(title: 'Login'),
                  SizedBox(height: 7.h),
                  const AuthSmallSizeDescription(
                    description: 'Login and continue using the app',
                  ),
                  SizedBox(height: 25.h),
                  const LoginForm(),
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
                        style: AppTextStyles.textStyle16Light(context),
                      ),
                      TextButton(
                        onPressed: () =>
                            context.pushRoute(const RegisterRoute()),
                        child: Text(
                          'Register here',
                          style:
                              AppTextStyles.textStyle16Bold(context).copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
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
