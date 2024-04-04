import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingSearchUserItem extends StatelessWidget {
  const LoadingSearchUserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ShimmerWidget(
            height: 60.h,
            width: 60.h,
            shape: BoxShape.circle,
          ),
          MySizedBox.width10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ShimmerWidget(
                  height: 24.h,
                  width: SizeConfig.width * 0.4,
                  circularRadiusVal: 24,
                ),
                MySizedBox.height8,
                ShimmerWidget(
                  height: 16.h,
                  width: double.infinity,
                  circularRadiusVal: 24,
                ),
                MySizedBox.height5,
                ShimmerWidget(
                  height: 16.h,
                  width: SizeConfig.width * 0.5,
                  circularRadiusVal: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
