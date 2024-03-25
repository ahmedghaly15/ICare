import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingBookmarksView extends StatelessWidget {
  const LoadingBookmarksView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ShimmerWidget(
          height: SizeConfig.height * 0.35,
          margin: EdgeInsets.only(
            bottom: 12.w,
            right: SizeConfig.width * 0.2,
          ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppConstants.radius25.r),
            bottomRight: Radius.circular(AppConstants.radius25.r),
            bottomLeft: Radius.circular(AppConstants.radius25.r),
          ),
        ),
        childCount: 10,
      ),
    );
  }
}
