import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/features/home/presentation/widgets/drawer_item_widget.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        AppUtils.drawerItems(context).length,
        (index) => DrawerItemWidget(
          drawerItem: AppUtils.drawerItems(context)[index],
        ),
        growable: false,
      ),
    );
  }
}
