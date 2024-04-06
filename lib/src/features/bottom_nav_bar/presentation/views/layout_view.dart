import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';

@RoutePage()
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRoute(), MedicalRoute(), ICareCommunityRoute()],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.svgsBlackHomeIcon),
            activeIcon: SvgPicture.asset(AppAssets.svgsHomeIcon),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.svgsBlackMedicalIcon),
            activeIcon: SvgPicture.asset(AppAssets.svgsMedicalIcon),
            label: AppStrings.medical,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.svgsBlackCommunityIcon),
            activeIcon: SvgPicture.asset(AppAssets.svgsCommunityIcon),
            label: AppStrings.community,
          ),
        ],
      ),
    );
  }
}
