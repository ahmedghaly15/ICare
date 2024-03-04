import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/core/widgets/custom_circle_back_button.dart';

class DiseaseImage extends StatelessWidget {
  const DiseaseImage({
    super.key,
    required this.diseaseData,
  });

  final DiseaseData diseaseData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.height * 0.35,
      child: Stack(
        children: <Widget>[
          Hero(
            tag: diseaseData.id,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50.r),
              ),
              child: CustomCachedNetworkImage(
                imageUrl: diseaseData.diseaseImage,
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 10.w,
            child: const CustomCircleBackButton(
              icon: Icons.keyboard_arrow_down_outlined,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
