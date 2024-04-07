import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
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
    return Container(
      height: SizeConfig.height * 0.35,
      decoration: BoxDecoration(
        borderRadius: AppConstants.diseaseDetailsImageBorderRadius,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5.h,
            blurRadius: 7.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: diseaseData.id,
            child: SizedBox(
              height: SizeConfig.height * 0.35,
              width: SizeConfig.width,
              child: ClipRRect(
                borderRadius: AppConstants.diseaseDetailsImageBorderRadius,
                child: CustomCachedNetworkImage(
                  imageUrl: diseaseData.diseaseImage,
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.height * 0.03,
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
