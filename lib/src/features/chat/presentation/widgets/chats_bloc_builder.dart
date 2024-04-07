import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/core/widgets/loading_users_sliver_list.dart';
import 'package:icare/src/features/chat/presentation/widgets/chat_item.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class ChatsBlocBuilder extends StatelessWidget {
  const ChatsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      buildWhen: (_, current) =>
          current is GetAllUsersLoading ||
          current is GetAllUsersSuccess ||
          current is GetAllUsersError,
      builder: (context, state) {
        if (state is GetAllUsersSuccess) {
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
        } else if (state is GetAllUsersError) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () => context.read<UserCubit>().getAllUsers(),
            ),
          );
        } else {
          return const LoadingUsersSliverList();
        }
      },
    );
  }
}
