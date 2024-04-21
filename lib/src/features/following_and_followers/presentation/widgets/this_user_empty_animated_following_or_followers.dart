import 'package:flutter/material.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/animated_empty_view.dart';
import 'package:icare/src/features/following_and_followers/presentation/widgets/animated_empty_following_or_followers.dart';

class ThisUserEmptyAnimatedFollowingOrFollowers extends StatelessWidget {
  const ThisUserEmptyAnimatedFollowingOrFollowers({
    super.key,
    required this.uId,
  });

  final String uId;

  @override
  Widget build(BuildContext context) {
    return uId == Helper.uId
        ? const SliverFillRemaining(
            child: AnimatedEmptyFollowingOrFollowers(
              title: AppStrings.notFollowingAnyone,
              description: AppStrings.notFollowingAnyoneDescription,
            ),
          )
        : const SliverFillRemaining(
            child: AnimatedEmptyView(
              svgImage: AppAssets.svgsEmptyFollowersOrFollowing,
              text: AppStrings.notFollowingAnyone,
            ),
          );
  }
}
