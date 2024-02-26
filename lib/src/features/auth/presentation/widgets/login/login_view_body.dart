import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
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
            sliver: const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAuthAppBar(),
                  AuthMediumSizeTitle(title: AppStrings.login),
                  MySizedBox(height: 7),
                  AuthSmallSizeDescription(
                    description: AppStrings.loginDescription,
                  ),
                  MySizedBox(height: 25),
                  LoginForm(),
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
                  const MySizedBox(height: 27),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppStrings.dontHavAcc,
                        style: AppTextStyles.textStyle16Light(context),
                      ),
                      TextButton(
                        onPressed: () =>
                            context.pushRoute(const RegisterRoute()),
                        child: Text(
                          AppStrings.registerHere,
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
