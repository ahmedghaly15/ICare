import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/features/search/presentation/widgets/loading_search_user_item.dart';

class LoadingSearchUsers extends StatelessWidget {
  const LoadingSearchUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const LoadingSearchUserItem();
          },
          childCount: 8,
        ),
      ),
    );
  }
}
