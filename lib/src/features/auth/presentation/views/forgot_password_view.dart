import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/features/auth/presentation/widgets/forgot_password/forgot_password_view_body.dart';

@RoutePage()
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // telling the Scaffold not to resize the body when the keyboard appears
      resizeToAvoidBottomInset: false,
      body: ForgotPasswordViewBody(),
    );
  }
}
