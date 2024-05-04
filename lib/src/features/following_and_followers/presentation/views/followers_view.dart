import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/following_and_followers/presentation/widgets/followers_bloc_builder.dart';

@RoutePage()
class FollowersView extends StatelessWidget {
  const FollowersView({super.key, required this.user});

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppUtils.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.followers),
            ),
            FollowersBlocBuilder(user: user)
          ],
        ),
      ),
    );
  }
}
