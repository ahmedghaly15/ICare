import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class LoadingRandomTipWidget extends StatelessWidget {
  const LoadingRandomTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: ShimmerWidget(
            height: SizeConfig.height * 0.02,
            width: SizeConfig.width * 0.25,
            circularRadiusVal: AppConstants.radius25,
          ),
        ),
        MySizedBox.height18,
        ShimmerWidget(
          height: SizeConfig.height * 0.025,
          width: SizeConfig.width * 0.5,
          circularRadiusVal: 8,
        ),
        MySizedBox.height8,
        Align(
          alignment: Alignment.centerRight,
          child: ShimmerWidget(
            height: SizeConfig.height * 0.02,
            width: SizeConfig.width * 0.15,
          ),
        ),
      ],
    );
  }
}
