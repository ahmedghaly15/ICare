import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/followers_or_following_stream_builder.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';

class FollowersAndFollowingRow extends StatelessWidget {
  const FollowersAndFollowingRow({
    super.key,
    required this.user,
  });

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FollowersOrFollowingStreamBuilder(
          onPressed: () {
            context.read<UserCubit>().getFollowers(user);
            context.pushRoute(FollowersRoute(user: user));
          },
          stream: context.read<UserCubit>().followersStream(user),
          title: AppStrings.followers,
        ),
        FollowersOrFollowingStreamBuilder(
          onPressed: () {
            context.read<UserCubit>().getFollowing(user);
            context.pushRoute(FollowingRoute(user: user));
          },
          stream: context.read<UserCubit>().followingStream(user),
          title: AppStrings.following,
        ),
      ],
    );
  }
}
