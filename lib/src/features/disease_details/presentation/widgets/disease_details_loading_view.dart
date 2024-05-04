import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_utils.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/shimmer_disease_details_description.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/shimmer_disease_details_section_title.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class DiseaseDetailsLoadingView extends StatelessWidget {
  const DiseaseDetailsLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ShimmerWidget(
          borderRadius: AppUtils.diseaseDetailsImageBorderRadius,
          height: SizeConfig.height * 0.35,
        ),
        MySizedBox.height12,
        SizedBox(
          height: SizeConfig.height * 0.06,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: AppConstants.scrollPhysics,
            itemBuilder: (_, index) => ShimmerWidget(
              margin: EdgeInsets.only(
                left: index == 0 ? 10.w : 0,
                right: index == 3 ? 10.w : 0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
                vertical: 14.h,
              ),
              circularRadiusVal: 50.r,
            ),
            separatorBuilder: (_, __) => MySizedBox.width6,
            itemCount: 4,
          ),
        ),
        MySizedBox.height18,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ShimmerDiseaseDetailsSectionTitle(),
              MySizedBox.height7,
              ShimmerDiseaseDetailsDescription(),
              MySizedBox.height12,
              ShimmerDiseaseDetailsSectionTitle(),
              MySizedBox.height7,
              ShimmerDiseaseDetailsDescription(),
            ],
          ),
        ),
      ],
    );
  }
}
