import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/following_and_followers/presentation/widgets/follower_user_item.dart';
import 'package:icare/src/core/widgets/loading_users_sliver_list.dart';
import 'package:icare/src/features/following_and_followers/presentation/widgets/this_user_empty_animated_following_or_followers.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class FollowingBlocBuilder extends StatelessWidget {
  const FollowingBlocBuilder({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      buildWhen: (_, current) =>
          current is GetFollowingLoading ||
          current is GetFollowingSuccess ||
          current is GetFollowingError,
      builder: (context, state) {
        if (state is GetFollowingSuccess) {
          return state.users.isNotEmpty
              ? SliverPadding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 9.w,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => FollowerUserItem(
                        user: state.users[index],
                      ),
                      childCount: state.users.length,
                    ),
                  ),
                )
              : ThisUserEmptyAnimatedFollowingOrFollowers(uId: user.uId!);
        } else if (state is GetFollowingError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<UserCubit>().getFollowing(user),
            ),
          );
        } else {
          return const LoadingUsersSliverList();
        }
      },
    );
  }
}
