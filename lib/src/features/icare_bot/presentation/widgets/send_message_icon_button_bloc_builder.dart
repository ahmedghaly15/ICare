import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_send_message_icon_button.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';

class SendMessageIconButtonBlocBuilder extends StatelessWidget {
  const SendMessageIconButtonBlocBuilder({super.key, required this.isEnabled});

  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ICareBotCubit, ICareBotState>(
      buildWhen: (_, state) =>
          state is Loading || state is Success || state is Error,
      builder: (_, state) {
        if (state is Loading) {
          return const CustomCircularProgressIndicator();
        }
        return CustomSendMessageIconButton(isEnabled: isEnabled);
      },
    );
  }
}
