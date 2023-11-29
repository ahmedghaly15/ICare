import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/bottom_spacer.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/auth/presentation/cubits/reset_password/reset_password_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/bottom_text_field_spacer.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_suffix_icon.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_text_field_label.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();

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
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
  }

  void _disposeController() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CustomTextFieldLabel(label: 'Password'),
              CustomTextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                keyboardType: TextInputType.visiblePassword,
                autofillHints: const <String>[AutofillHints.password],
                obscureText: BlocProvider.of<ResetPasswordCubit>(context)
                    .isResetPassVisible,
                suffixIcon: CustomSuffixIcon(
                  icon: BlocProvider.of<ResetPasswordCubit>(context)
                          .isResetPassVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onTap: () => BlocProvider.of<ResetPasswordCubit>(context)
                      .changePassVisibility(),
                ),
                hintText: 'Enter your password',
                onEditingComplete: () =>
                    Helper.requestFocus(context, _confirmPasswordFocusNode),
                validating: (String? value) =>
                    Helper.validatePasswordField(context, value: value),
              ),
              const BottomTextFieldSpacer(),
              const CustomTextFieldLabel(label: 'Confirm Password'),
              CustomTextFormField(
                controller: _confirmPasswordController,
                focusNode: _confirmPasswordFocusNode,
                keyboardType: TextInputType.visiblePassword,
                autofillHints: const <String>[AutofillHints.password],
                obscureText: BlocProvider.of<ResetPasswordCubit>(context)
                    .isConfirmPassVisible,
                suffixIcon: CustomSuffixIcon(
                  icon: BlocProvider.of<ResetPasswordCubit>(context)
                          .isConfirmPassVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  onTap: () => BlocProvider.of<ResetPasswordCubit>(context)
                      .changeConfirmPassVisibility(),
                ),
                hintText: 'Confirm your password',
                onSubmit: (String val) => _confirmResetPassword(context),
                validating: (String? value) =>
                    Helper.validateConfirmPasswordField(
                  context,
                  password: _passwordController.text,
                  confirmPassword: _confirmPasswordController.text,
                  value: value,
                ),
              ),
              const Spacer(),
              PrimaryButton(
                text: 'Confirm',
                onPressed: () => _confirmResetPassword(context),
              ),
              const BottomSpacer(heightSpace: 16.0),
            ],
          ),
        );
      },
    );
  }

  void _confirmResetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Helper.keyboardUnfocus(context);
      debugPrint('NEW PASSWORD: ${_passwordController.text}');
      debugPrint('NEW CONFIRMED PASSWORD: ${_confirmPasswordController.text}');
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }
}
