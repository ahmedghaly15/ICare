import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/service_locator.dart';
import 'package:icare/src/core/widgets/custom_arrow_back_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_description.dart';
import 'package:icare/src/features/auth/presentation/widgets/auth_big_size_title.dart';
import 'package:icare/src/features/auth/presentation/widgets/reset_password/reset_password_form.dart';

@RoutePage()
class ResetPasswordView extends StatelessWidget implements AutoRouteWrapper {
  const ResetPasswordView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ResetPasswordCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const AuthBigSizTitle(title: 'Reset Password'),
              const AuthBigSizeDescription(
                description:
                    "Reset your account password and access your personal account again",
              ),
              SizedBox(height: 56.h),
              const ResetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
