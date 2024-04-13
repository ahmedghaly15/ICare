import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_photos_tab.dart';
import 'package:icare/src/features/profile/presentation/widgets/profile_tiny_tales_tab.dart';

class CustomProfileTabBar extends StatefulWidget {
  const CustomProfileTabBar({super.key});

  @override
  State<CustomProfileTabBar> createState() => _CustomProfileTabBarState();
}

class _CustomProfileTabBarState extends State<CustomProfileTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: '${AppStrings.tinyTale}s'),
            Tab(text: AppStrings.photos),
          ],
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: EdgeInsets.symmetric(horizontal: 24.0.w),
          isScrollable: true,
          onTap: (tab) => _onPressedOnTaps(tab),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              ProfileTinyTalesTab(),
              ProfilePhotosTab(),
            ],
          ),
        ),
      ],
    );
  }

  void _onPressedOnTaps(int tab) {
    if (tab == 0) {
      context.read<ProfileCubit>().getUserTinyTales();
    } else if (tab == 1) {
      context.read<ProfileCubit>().getUserPhotos();
    }
  }
}
