import 'package:flutter/material.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
    this.emailFocusNode,
    this.passwordFocusNode,
    this.hasEditingComplete = true,
    this.onSubmit,
    this.onChanged,
  });

  final TextEditingController emailController;
  final FocusNode? emailFocusNode;
  final FocusNode? passwordFocusNode;
  final bool hasEditingComplete;
  final Function(String submittedText)? onSubmit;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      focusNode: emailFocusNode,
      autofillHints: const <String>[AutofillHints.email],
      hintText: AppStrings.enterYourEmail,
      suffixIcon: const Icon(Icons.email_outlined),
      onEditingComplete: () => hasEditingComplete
          ? AuthHelper.requestFocus(context, passwordFocusNode!)
          : null,
      keyboardType: TextInputType.emailAddress,
      validating: (String? value) =>
          AuthHelper.validateEmailField(value: value),
      onSubmit: onSubmit,
      onChanged: onChanged,
    );
  }
}
