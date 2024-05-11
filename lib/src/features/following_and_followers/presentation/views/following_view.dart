import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/following_and_followers/presentation/widgets/following_bloc_builder.dart';

@RoutePage()
class FollowingView extends StatelessWidget {
  const FollowingView({super.key, required this.user});

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(title: AppStrings.following),
            FollowingBlocBuilder(user: user)
          ],
        ),
      ),
    );
  }
}
