import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class ShimmerDiseaseDetailsSectionTitle extends StatelessWidget {
  const ShimmerDiseaseDetailsSectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      height: SizeConfig.height * 0.035,
      width: SizeConfig.width * 0.6,
    );
  }
}
