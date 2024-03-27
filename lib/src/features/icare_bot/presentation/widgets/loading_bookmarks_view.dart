import 'package:flutter/material.dart';
import 'package:icare/src/features/icare_bot/presentation/widgets/loading_bookmark_item.dart';

class LoadingBookmarksView extends StatelessWidget {
  const LoadingBookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const LoadingBookmarkItem(),
        childCount: 10,
      ),
    );
  }
}
