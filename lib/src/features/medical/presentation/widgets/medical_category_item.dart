import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

class MedicalCategoryItem extends StatelessWidget {
  const MedicalCategoryItem({
    super.key,
    required this.medicalCategory,
    required this.onPressed,
  });

  final GetMedicalResponse medicalCategory;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: AppConstants.medicalCategoryItemAspectRatio,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        shape: _medicalCategoryItemShape(),
        child: Card(
          elevation: 8.h,
          shape: _medicalCategoryItemShape(),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(AppConstants.radius25.r),
                child: CustomCachedNetworkImage(
                  imageUrl: medicalCategory.medicalCategoryImage,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h, right: 8.w),
                height: SizeConfig.height * 0.04,
                width: SizeConfig.height * 0.04,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 16.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RoundedRectangleBorder _medicalCategoryItemShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppConstants.radius25.r),
    );
  }
}
