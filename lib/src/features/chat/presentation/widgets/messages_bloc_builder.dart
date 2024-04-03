import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
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
          return SliverPadding(
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 9.w,
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => CustomMessageBubble(
                  message: state.messages[index],
                  isMe: Helper.uId == state.messages[index].senderId,
                ),
                childCount: state.messages.length,
              ),
            ),
          );
        } else if (state is StreamMessagesError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<ChatCubit>().streamMessages(receiverId),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
