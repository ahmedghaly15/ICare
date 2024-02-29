import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

class MedicalItem extends StatelessWidget {
  const MedicalItem({
    super.key,
    required this.itemInfo,
    required this.onPressed,
  });

  final GetMedicalResponse itemInfo;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 310 / 135,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(25.r),
              child: CustomCachedNetworkImage(
                imageUrl: itemInfo.medicalCategoryImage,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(14.h),
              child: Text(
                itemInfo.medicalCategoryName,
                style: AppTextStyles.textStyle25Bold(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
