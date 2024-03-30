import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/tiny_tales/presentation/widgets/tiny_tale_item_container.dart';

class TinyTaleLoadingItem extends StatelessWidget {
  const TinyTaleLoadingItem({
    super.key,
    required this.isTinyTaleWithImage,
  });

  final bool isTinyTaleWithImage;

  @override
  Widget build(BuildContext context) {
    return TinyTaleItemContainer(
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  ShimmerWidget(
                    height: 40.h,
                    width: 40.h,
                    shape: BoxShape.circle,
                  ),
                  MySizedBox.width10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ShimmerWidget(
                        height: SizeConfig.height * 0.014,
                        width: SizeConfig.width * 0.4,
                      ),
                      MySizedBox.height5,
                      ShimmerWidget(
                        height: SizeConfig.height * 0.0125,
                        width: SizeConfig.width * 0.3,
                      ),
                    ],
                  ),
                  const Spacer(),
                  ShimmerWidget(
                    height: 8.h,
                    width: 25.w,
                  ),
                ],
              ),
              MySizedBox.height10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  isTinyTaleWithImage ? 2 : 4,
                  (index) => ShimmerWidget(
                    margin: EdgeInsets.only(bottom: 5.h),
                    height: SizeConfig.height * 0.012,
                    width: index % 2 == 0
                        ? double.infinity
                        : SizeConfig.width * 0.8,
                  ),
                ),
              ),
            ],
          ),
          if (isTinyTaleWithImage) ...[
            MySizedBox.height7,
            ShimmerWidget(
              circularRadiusVal: 30,
              height: SizeConfig.height * 0.25,
              width: double.infinity,
            ),
          ],
          MySizedBox.height7,
        ],
      ),
    );
  }
}
