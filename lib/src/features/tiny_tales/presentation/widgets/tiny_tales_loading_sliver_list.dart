import 'package:flutter/material.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tile_item_loading.dart';

class TinyTalesLoadingSliverList extends StatelessWidget {
  const TinyTalesLoadingSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            TinyTaleLoadingItem(isTinyTaleWithImage: index % 2 != 0),
        childCount: 10,
      ),
    );
  }
}
