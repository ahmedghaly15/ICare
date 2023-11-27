import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/service_locator.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:icare/src/features/auth/presentation/widgets/login/login_view_body.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => serviceLocator.get<LoginCubit>(),
        child: const LoginViewBody(),
      ),
    );
  }
}
