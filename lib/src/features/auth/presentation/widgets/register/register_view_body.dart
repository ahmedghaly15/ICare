import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/bottom_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_small_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_medium_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_auth_app_bar.dart';
import 'package:icare/src/features/auth/presentation/widgets/register/register_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: AppConstants.authHorizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomAuthAppBar(),
              const AuthMediumSizeTitle(title: 'Register'),
              SizedBox(height: 7.h),
              const AuthSmallSizeDescription(
                description: 'Enter your personal information ',
              ),
              SizedBox(height: 25.h),
              const RegisterForm(),
              const BottomSpacer(),
            ],
          ),
        ),
      ),
    );
  }
}
