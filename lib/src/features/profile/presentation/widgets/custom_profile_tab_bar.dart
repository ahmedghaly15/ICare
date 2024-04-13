import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_strings.dart';

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
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(horizontal: 24.0.w),
          isScrollable: true,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemBuilder: (_, index) => const Text('data'),
                itemCount: 50,
              ),
              const Center(child: Text('Tab 2 content')),
            ],
          ),
        ),
      ],
    );
  }
}
