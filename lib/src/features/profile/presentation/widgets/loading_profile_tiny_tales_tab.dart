import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tile_item_loading.dart';

class LoadingProfileTinyTalesTab extends StatelessWidget {
  const LoadingProfileTinyTalesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: AppUtils.profileTabsPadding,
      itemBuilder: (_, index) =>
          TinyTaleLoadingItem(isTinyTaleWithImage: index % 2 != 0),
      itemCount: 10,
    );
  }
}
