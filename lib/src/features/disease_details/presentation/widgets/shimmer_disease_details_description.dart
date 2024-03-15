import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class ShimmerDiseaseDetailsDescription extends StatelessWidget {
  const ShimmerDiseaseDetailsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        8,
        (index) => ShimmerWidget(
          height: SizeConfig.height * 0.02,
          margin: EdgeInsets.only(
            bottom: index != 9 ? 10.h : 0,
          ),
        ),
        growable: false,
      ),
    );
  }
}
