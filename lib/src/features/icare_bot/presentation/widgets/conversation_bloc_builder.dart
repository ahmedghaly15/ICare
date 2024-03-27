import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/conversation.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/frequently_asked_questions.dart';

class ConversationBlocBuilder extends StatelessWidget {
  const ConversationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ICareBotCubit, ICareBotState>(
      buildWhen: (_, current) =>
          current is ICareBotInitial || current is Success || current is Error,
      builder: (context, state) {
        if (state is Success) {
          return const Expanded(child: Conversation());
        } else if (state is Error) {
          return CustomErrorWidget(
            error: state.message,
            hasTryAgainButton: false,
          );
        } else {
          return const Expanded(child: FrequentlyAskedQuestions());
        }
      },
    );
  }
}