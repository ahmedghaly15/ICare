import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_suffix_icon.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';
import 'package:icare/src/features/auth/presentation/widgets/forgot_password_text_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autovalidateMode;

  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _disposeController();
    _disposeFocusNodes();
  }

  void _disposeFocusNodes() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  void _disposeController() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const CustomTextFieldLabel(label: 'Email'),
          CustomTextFormField(
            controller: _emailController,
            focusNode: _emailFocusNode,
            autofillHints: const <String>[AutofillHints.email],
            hintText: 'Enter your email',
            suffixIcon: const CustomSuffixIcon(icon: Icons.email_outlined),
            validating: (String? value) => Helper.validateEmailField(value),
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(_passwordFocusNode),
          ),
          const BottomTextFieldSpacer(),
          const CustomTextFieldLabel(label: 'Password'),
          CustomTextFormField(
            controller: _passwordController,
            focusNode: _passwordFocusNode,
            autofillHints: const <String>[AutofillHints.password],
            suffixIcon: CustomSuffixIcon(
              icon: Icons.visibility,
              onTap: () {},
            ),
            hintText: 'Enter your password',
            validating: (String? value) => Helper.validatePasswordField(value),
          ),
          const ForgotPasswordTextButton(),
          SizedBox(height: 10.h),
          PrimaryButton(
            text: 'Login',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
