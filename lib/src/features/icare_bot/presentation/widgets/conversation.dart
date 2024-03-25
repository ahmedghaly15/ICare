import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_cubit.dart';
import 'package:icare/src/features/icare_bot/presentation/cubits/icare_bot/icare_bot_state.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/message_bubble.dart';

class Conversation extends StatelessWidget {
  const Conversation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ICareBotCubit, ICareBotState>(
      buildWhen: (_, current) => current is Success,
      builder: (context, state) {
        return ListView.separated(
          padding: AppConstants.iCareBotConversationsPadding,
          physics: AppConstants.scrollPhysics,
          controller: context.read<ICareBotCubit>().scrollController,
          itemCount: context.read<ICareBotCubit>().chat.history.length,
          itemBuilder: (_, index) {
            final content =
                context.read<ICareBotCubit>().chat.history.toList()[index];

            final text = content.parts
                .whereType<TextPart>()
                .map<String>((e) => e.text)
                .join('');

            return MessageBubble(
              message: text,
              isUser: content.role == 'user',
            );
          },
          separatorBuilder: (_, __) => MySizedBox.height12,
        );
      },
    );
  }
}
