import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/bottom_nav_bar/presentation/widgets/custom_svg_bottom_nav_bar_icon.dart';

@RoutePage()
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRoute(), MedicalRoute(), BabyRoute()],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsGreyHomeIcon,
            ),
            activeIcon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsHomeIcon,
            ),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsGreyMedicalIcon,
            ),
            activeIcon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsMedicalIcon,
            ),
            label: AppStrings.medical,
          ),
          BottomNavigationBarItem(
            icon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsGreyBabyIcon,
            ),
            activeIcon: CustomSvgBottomNavBarIcon(
              icon: AppAssets.svgsBabyIcon,
            ),
            label: AppStrings.baby,
          ),
        ],
      ),
    );
  }
}
