import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_medium_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_small_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_auth_app_bar.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/dont_have_acc.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/google_bloc_consumer.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/login_form.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/or.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: AppConstants.horizontalPadding,
            sliver: const SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAuthAppBar(),
                  AuthMediumSizeTitle(title: AppStrings.login),
                  MySizedBox.height7,
                  AuthSmallSizeDescription(
                    description: AppStrings.loginDescription,
                  ),
                  MySizedBox.height25,
                  LoginForm(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: AppConstants.horizontalPadding,
            sliver: const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  MySizedBox.height27,
                  Or(),
                  MySizedBox.height25,
                  GoogleBlocConsumer(),
                  Spacer(),
                  MySizedBox.height10,
                  DontHavAcc(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
