import 'package:flutter/material.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_text_form_field.dart';
import 'package:icare/src/features/auth/presentation/widgets/custom_suffix_icon.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailController,
    this.emailFocusNode,
    this.passwordFocusNode,
    this.hasEditingComplete = true,
    this.onSubmit,
  });

  final TextEditingController emailController;
  final FocusNode? emailFocusNode;
  final FocusNode? passwordFocusNode;
  final bool hasEditingComplete;
  final Function(String submittedText)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      focusNode: emailFocusNode,
      autofillHints: const <String>[AutofillHints.email],
      hintText: 'Enter your email',
      suffixIcon: const CustomSuffixIcon(icon: Icons.email_outlined),
      onEditingComplete: () => hasEditingComplete
          ? Helper.requestFocus(context, passwordFocusNode!)
          : null,
      keyboardType: TextInputType.emailAddress,
      validating: (String? value) =>
          Helper.validateEmailField(context, value: value),
      onSubmit: onSubmit,
    );
  }
}
