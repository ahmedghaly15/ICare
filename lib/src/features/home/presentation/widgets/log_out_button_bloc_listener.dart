import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class LogoutButtonBlocListener extends StatelessWidget {
  const LogoutButtonBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (_, current) =>
          current is SignOutSuccess || current is SignOutError,
      listener: (context, state) {
        state.whenOrNull(
          signOutSuccess: () {
            context.maybePop().then(
              (value) {
                context.router.replace(const StartRoute());
              },
            );
          },
          signOutError: (error) {
            context.maybePop().then((value) {
              ShowICareDialog.showICareDialogError(context, error);
            });
          },
        );
      },
      child: PrimaryButton(
        onPressed: () => context.read<UserCubit>().signOut(),
        text: AppStrings.logOut,
        hasShadow: false,
        borderRadius: 16,
      ),
    );
  }
}
