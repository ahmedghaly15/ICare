import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';

class LoginFormContent extends StatelessWidget {
  const LoginFormContent({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.formKey,
    required this.login,
    required this.autovalidateMode,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  final void Function() login;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTextFieldLabel(label: 'Email'),
          EmailTextFormField(
            emailController: emailController,
            emailFocusNode: emailFocusNode,
            passwordFocusNode: passwordFocusNode,
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Password'),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) => CustomTextFormField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              keyboardType: TextInputType.visiblePassword,
              autofillHints: const <String>[AutofillHints.password],
              obscureText:
                  BlocProvider.of<LoginCubit>(context).isLoginPassVisible,
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                    BlocProvider.of<LoginCubit>(context).isLoginPassVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                onPressed: () =>
                    BlocProvider.of<LoginCubit>(context).changePassVisibility(),
              ),
              hintText: 'Enter your password',
              onSubmit: (String val) => login,
              validating: (String? value) =>
                  AuthHelper.validatePasswordField(context, value: value),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            margin: EdgeInsets.only(bottom: 6.h),
            child: TextButton(
              onPressed: () => context.pushRoute(const ForgotPasswordRoute()),
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.textStyle13Bold(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          PrimaryButton(
            text: 'Login',
            onPressed: login,
          ),
        ],
      ),
    );
  }
}
