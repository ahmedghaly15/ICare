import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_arrow_back_button.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/forgot_password/forgot_password_form.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // telling the Scaffold not to resize the body when the keyboard appears
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.authHorizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: AppConstants.authTopMargin.h,
                  bottom: 13.h,
                ),
                child: const CustomArrowBackButton(),
              ),
              const AuthBigSizTitle(title: 'Forgot Password'),
              const AuthBigSizeDescription(
                description:
                    "Enter the email associated with your account to reset your password. We'll send you a link to create a new one.",
              ),
              SizedBox(height: 55.h),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
