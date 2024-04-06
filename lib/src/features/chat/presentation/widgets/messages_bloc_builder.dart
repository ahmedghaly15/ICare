import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:icare/src/features/chat/presentation/widgets/custom_message_bubble.dart';

class MessagesBlocBuilder extends StatelessWidget {
  const MessagesBlocBuilder({
    super.key,
    required this.receiverId,
  });

  final String receiverId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      buildWhen: (_, current) =>
          current is StreamMessagesLoading ||
          current is StreamMessagesSuccess ||
          current is StreamMessagesError,
      builder: (context, state) {
        if (state is StreamMessagesSuccess) {
          return Expanded(
            child: state.messages.isNotEmpty
                ? MessagesListView(messages: state.messages)
                : const SizedBox.shrink(),
          );
        } else if (state is StreamMessagesError) {
          return Expanded(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: CustomErrorWidget(
                    error: state.error,
                    tryAgainOnPressed: () =>
                        context.read<ChatCubit>().streamMessages(receiverId),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Expanded(
            child: MessagesListView(
              messages: context.read<ChatCubit>().messages,
            ),
          );
        }
      },
    );
  }
}

class MessagesListView extends StatelessWidget {
  const MessagesListView({
    super.key,
    required this.messages,
  });

  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      reverse: true,
      itemCount: messages.length,
      itemBuilder: (_, index) {
        return CustomMessageBubble(
          message: messages[index],
          isMe: Helper.uId == messages[index].senderId,
        );
      },
    );
  }
}
