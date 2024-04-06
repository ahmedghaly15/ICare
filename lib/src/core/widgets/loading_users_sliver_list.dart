import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/loading_user_item.dart';

class LoadingUsersSliverList extends StatelessWidget {
  const LoadingUsersSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 16.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const LoadingUserItem();
          },
          childCount: 8,
        ),
      ),
    );
  }
}
