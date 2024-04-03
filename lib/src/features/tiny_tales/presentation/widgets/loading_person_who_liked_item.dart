import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingPersonWhoLikedItem extends StatelessWidget {
  const LoadingPersonWhoLikedItem({super.key, required this.isEvenItem});

  final bool isEvenItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: <Widget>[
          ShimmerWidget(
            height: 40.h,
            width: 40.w,
            shape: BoxShape.circle,
          ),
          MySizedBox.width10,
          ShimmerWidget(
            height: 16.h,
            width: isEvenItem ? SizeConfig.width * 0.4 : SizeConfig.width * 0.3,
          ),
        ],
      ),
    );
  }
}
