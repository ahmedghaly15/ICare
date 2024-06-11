import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_view_body.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(
              title: AppStrings.profile,
              actions: <Widget>[
                IconButton(
                  onPressed: () => context.pushRoute(const EditProfileRoute()),
                  icon: Icon(
                    Icons.edit,
                    color:
                        context.isDarkModeActive ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(child: MySizedBox.height65),
            const SliverFillRemaining(child: ProfileViewBody()),
          ],
        ),
      ),
    );
  }
}
