import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';

class DiseaseItem extends StatelessWidget {
  const DiseaseItem({
    super.key,
    required this.diseaseData,
    required this.onPressed,
  });

  final DiseaseData diseaseData;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: _diseaseItemBorderRadius(),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: _diseaseItemBorderRadius(),
        ),
        elevation: 8.h,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: diseaseData.id,
              child: ClipRRect(
                borderRadius: _diseaseItemBorderRadius(),
                child: CustomCachedNetworkImage(
                  imageUrl: diseaseData.diseaseImage,
                ),
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
                  diseaseData.diseaseName,
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

  BorderRadius _diseaseItemBorderRadius() =>
      BorderRadius.circular(AppConstants.radiusVal);
}
