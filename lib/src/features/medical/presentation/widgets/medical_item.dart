import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/core/utils/size_config.dart';
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
      aspectRatio: 350 / 175,
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Card(
          elevation: 8.h,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: CustomCachedNetworkImage(
                  imageUrl: itemInfo.medicalCategoryImage,
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
}
