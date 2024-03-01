import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/medical/data/models/get_emergency_diseases_response.dart';

class DiseaseItem extends StatelessWidget {
  const DiseaseItem({
    super.key,
    required this.diseaseInfo,
    required this.onPressed,
  });

  final GetEmergencyDiseasesResponse diseaseInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusVal),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusVal),
        ),
        elevation: 8.h,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(AppConstants.radiusVal),
              child: CustomCachedNetworkImage(
                imageUrl: diseaseInfo.diseaseImage,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(AppConstants.radiusVal),
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.all(8.0.h),
                child: Text(
                  diseaseInfo.diseaseName,
                  style: AppTextStyles.textStyle20Bold(context)
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
