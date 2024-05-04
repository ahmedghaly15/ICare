import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/user_profile_view_body.dart';

@RoutePage()
class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key, required this.user});

  final ICareUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppUtils.viewAppBarPadding,
              sliver: const CustomSliverAppBar(),
            ),
            const SliverToBoxAdapter(child: MySizedBox.height65),
            SliverFillRemaining(
              child: UserProfileViewBody(user: user),
            ),
          ],
        ),
      ),
    );
  }
}
