import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingBookmarkItem extends StatelessWidget {
  const LoadingBookmarkItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        ShimmerWidget(
          height: SizeConfig.height * 0.05,
          width: SizeConfig.height * 0.05,
          shape: BoxShape.circle,
        ),
        MySizedBox.width6,
        Flexible(
          child: ShimmerWidget(
            height: SizeConfig.height * 0.35,
            width: SizeConfig.width * 0.6,
            margin: EdgeInsets.only(
              bottom: 12.w,
              top: 16.h,
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppConstants.radius25.r),
              bottomRight: Radius.circular(AppConstants.radius25.r),
              bottomLeft: Radius.circular(AppConstants.radius25.r),
            ),
          ),
        ),
      ],
    );
  }
}
