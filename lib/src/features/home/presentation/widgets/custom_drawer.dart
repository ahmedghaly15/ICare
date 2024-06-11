import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_divider.dart';
import 'package:icare/src/features/home/presentation/widgets/custom_home_drawer_header.dart';
import 'package:icare/src/features/home/presentation/widgets/drawer_items.dart';
import 'package:icare/src/features/home/presentation/widgets/switch_theme_and_sign_out_buttons.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width * 0.7,
      color: context.isDarkModeActive
          ? AppColors.scaffoldDarkModeBackgroundColor
          : Colors.white,
      padding: EdgeInsets.only(
        left: 14.w,
        right: 14.w,
        top: SizeConfig.height * 0.05,
        bottom: 30.h,
      ),
      child: CustomScrollView(
        slivers: [
          const CustomHomeDrawerHeader(),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            sliver: const SliverToBoxAdapter(
              child: CustomDivider(
                color: AppColors.lightGrey,
                thickness: 1,
                isExpanded: false,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: DrawerItems()),
          const SliverFillRemaining(
            child: SwitchThemeAndSignOutButtons(),
          ),
        ],
      ),
    );
  }
}
