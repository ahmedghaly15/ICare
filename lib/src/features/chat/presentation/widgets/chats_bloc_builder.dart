import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/loading_users_sliver_list.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:icare/src/features/chat/presentation/widgets/chat_item.dart';

class ChatsBlocBuilder extends StatelessWidget {
  const ChatsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      buildWhen: (_, current) =>
          current is GetChatsLoading ||
          current is GetChatsSuccess ||
          current is GetChatsError,
      builder: (context, state) {
        if (state is GetChatsSuccess) {
          return state.users.isNotEmpty
              ? SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => ChatItem(user: state.users[index]),
                      childCount: state.users.length,
                    ),
                  ),
                )
              : const SliverFillRemaining(
                  child: AnimatedEmptyView(
                    svgImage: AppAssets.svgsEmptyChats,
                    text: AppStrings.startChatting,
                  ),
                );
        } else if (state is GetChatsError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () => context.read<ChatCubit>().getChats(),
            ),
          );
        } else {
          return const LoadingUsersSliverList();
        }
      },
    );
  }
}
