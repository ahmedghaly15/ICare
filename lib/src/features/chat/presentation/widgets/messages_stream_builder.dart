import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_cubit.dart';
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
      stream: context.read<ChatDetailsCubit>().messagesStream(receiverId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting &&
            snapshot.data == null) {
          return const Expanded(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
        final messages = snapshot.data!.docs
            .map((doc) => MessageModel.fromJson(doc.data()))
            .toList();
        return Expanded(
          child: messages.isNotEmpty
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (_, index) {
                    return CustomMessageBubble(
                      message: messages[index],
                      isMe: Constants.uId == messages[index].senderId,
                    );
                  },
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
