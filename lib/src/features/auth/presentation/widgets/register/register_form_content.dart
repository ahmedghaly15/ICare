import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_suffix_icon.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/email_text_form_field.dart';

class RegisterFormContent extends StatelessWidget {
  const RegisterFormContent({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.nameFocusNode,
    required this.emailFocusNode,
    required this.passwordFocusNode,
    required this.confirmPasswordFocusNode,
    required this.formKey,
    required this.register,
    required this.autovalidateMode,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final FocusNode nameFocusNode;
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  final FocusNode confirmPasswordFocusNode;
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  final void Function() register;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTextFieldLabel(label: 'Name'),
          CustomTextFormField(
            controller: nameController,
            focusNode: nameFocusNode,
            hintText: 'Enter your name',
            onEditingComplete: () =>
                Helper.requestFocus(context, emailFocusNode),
            autofillHints: const <String>[AutofillHints.name],
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
            validating: (String? value) =>
                Helper.validateNameField(context, value: value),
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Email'),
          EmailTextFormField(
            emailController: emailController,
            emailFocusNode: emailFocusNode,
            passwordFocusNode: passwordFocusNode,
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Password'),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomTextFormField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              keyboardType: TextInputType.visiblePassword,
              autofillHints: const <String>[AutofillHints.password],
              obscureText:
                  BlocProvider.of<RegisterCubit>(context).isRegisterPassVisible,
              suffixIcon: CustomSuffixIcon(
                icon: BlocProvider.of<RegisterCubit>(context)
                        .isRegisterPassVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                onTap: () => BlocProvider.of<RegisterCubit>(context)
                    .changePassVisibility(),
              ),
              hintText: 'Enter your password',
              onEditingComplete: () =>
                  Helper.requestFocus(context, confirmPasswordFocusNode),
              validating: (String? value) =>
                  Helper.validatePasswordField(context, value: value),
            ),
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Confirm Password'),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomTextFormField(
              controller: confirmPasswordController,
              focusNode: confirmPasswordFocusNode,
              keyboardType: TextInputType.visiblePassword,
              autofillHints: const <String>[AutofillHints.password],
              obscureText:
                  BlocProvider.of<RegisterCubit>(context).isConfirmPassVisible,
              suffixIcon: CustomSuffixIcon(
                icon:
                    BlocProvider.of<RegisterCubit>(context).isConfirmPassVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                onTap: () => BlocProvider.of<RegisterCubit>(context)
                    .changeConfirmPassVisibility(),
              ),
              hintText: 'Confirm your password',
              onSubmit: (String val) => register,
              validating: (String? value) =>
                  Helper.validateConfirmPasswordField(
                context,
                password: passwordController.text,
                confirmPassword: confirmPasswordController.text,
                value: value,
              ),
            ),
          ),
          SizedBox(height: 46.h),
          PrimaryButton(
            text: 'Register',
            onPressed: register,
          ),
        ],
      ),
    );
  }
}
