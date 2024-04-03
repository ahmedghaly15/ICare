import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/widgets/custom_message_bubble.dart';

class MessagesStreamBuilder extends StatelessWidget {
  const MessagesStreamBuilder({
    super.key,
    required this.receiverId,
  });

  final String receiverId;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: context.read<ChatCubit>().messagesStream(receiverId),
      builder: (context, snapshot) {
        return context.read<ChatCubit>().messages.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  reverse: true,
                  itemCount: context.read<ChatCubit>().messages.length,
                  itemBuilder: (_, index) {
                    return CustomMessageBubble(
                      message: context.read<ChatCubit>().messages[index],
                      isMe: Helper.uId ==
                          context.read<ChatCubit>().messages[index].senderId,
                    );
                  },
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
