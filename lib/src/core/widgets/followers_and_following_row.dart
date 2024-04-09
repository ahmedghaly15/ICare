import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          onPressed: () {},
          stream: context.read<UserCubit>().followersStream(user),
          title: AppStrings.followers,
        ),
        FollowersOrFollowingStreamBuilder(
          onPressed: () {},
          stream: context.read<UserCubit>().followingStream(user),
          title: AppStrings.following,
        ),
      ],
    );
  }
}
