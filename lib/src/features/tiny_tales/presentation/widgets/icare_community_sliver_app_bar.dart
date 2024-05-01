import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_drawer_icon_button.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/icare_community_dialog.dart';

class ICareCommunitySliverAppBar extends StatelessWidget {
  const ICareCommunitySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      title: AppStrings.icareCommunity,
      leading: const CustomDrawerIconButton(),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            ShowICareDialog.show(
              context: context,
              child: const ICareCommunityDialog(),
            );
          },
          icon: Image.asset(AppAssets.imagesAppLogo),
        ),
      ],
    );
  }
}
