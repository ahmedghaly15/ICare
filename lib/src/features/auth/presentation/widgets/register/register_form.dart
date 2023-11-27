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
import 'package:icare/src/features/auth/presentation/widgets/forgot_password_text_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _disposeController();
    _disposeFocusNodes();
  }

  void _disposeFocusNodes() {
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
  }

  void _disposeController() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTextFieldLabel(label: 'Name'),
          CustomTextFormField(
            controller: _nameController,
            focusNode: _nameFocusNode,
            hintText: 'Enter your name',
            validating: (String? value) =>
                Helper.validateNameField(context, value: value),
            onEditingComplete: () =>
                Helper.requestFocus(context, _emailFocusNode),
            autofillHints: const <String>[AutofillHints.name],
            keyboardType: TextInputType.name,
            textCapitalization: TextCapitalization.words,
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Email'),
          CustomTextFormField(
            controller: _emailController,
            focusNode: _emailFocusNode,
            autofillHints: const <String>[AutofillHints.email],
            hintText: 'Enter your email',
            suffixIcon: const CustomSuffixIcon(icon: Icons.email_outlined),
            validating: (String? value) =>
                Helper.validateEmailField(context, value: value),
            onEditingComplete: () =>
                Helper.requestFocus(context, _passwordFocusNode),
            keyboardType: TextInputType.emailAddress,
          ),
          const BottomTextFieldSpacer(),
          Container(
            margin: EdgeInsets.only(bottom: 7.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const CustomTextFieldLabel(
                  label: 'Password',
                  hasBottomMargin: false,
                ),
                Container(
                  margin: EdgeInsets.only(right: 6.w),
                  child: const ForgotPasswordTextButton(),
                ),
              ],
            ),
          ),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomTextFormField(
              controller: _passwordController,
              focusNode: _passwordFocusNode,
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
              validating: (String? value) =>
                  Helper.validatePasswordField(context, value: value),
              onEditingComplete: () =>
                  Helper.requestFocus(context, _confirmPasswordFocusNode),
            ),
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Confirm Password'),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) => CustomTextFormField(
              controller: _confirmPasswordController,
              focusNode: _confirmPasswordFocusNode,
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
              validating: (String? value) =>
                  Helper.validateConfirmPasswordField(
                context,
                value: value,
                password: _passwordController.text.trim(),
                confirmPassword: _confirmPasswordController.text.trim(),
              ),
              onSubmit: (String? val) => _register(context),
            ),
          ),
          SizedBox(height: 46.h),
          PrimaryButton(
            text: 'Register',
            onPressed: () => _register(context),
          ),
        ],
      ),
    );
  }

  void _register(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Helper.keyboardUnfocus(context);
    }
  }
}
