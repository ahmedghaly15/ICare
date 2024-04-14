import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class CurrentUserEmailBlocBuilder extends StatelessWidget {
  const CurrentUserEmailBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      buildWhen: (_, current) => current is GetUserDataSuccess,
      builder: (context, state) {
        return Text(
          Helper.currentUser!.email!,
          style: AppTextStyles.textStyle16Regular(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
