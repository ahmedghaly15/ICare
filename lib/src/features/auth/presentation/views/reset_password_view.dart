import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:icare/src/core/utils/app_constants.dart';

@RoutePage()
class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppConstants.authHorizontalPadding,
          child: const Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
