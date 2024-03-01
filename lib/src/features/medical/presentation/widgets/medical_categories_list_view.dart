import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_category_item.dart';

class MedicalCategoriesListView extends StatelessWidget {
  const MedicalCategoriesListView({
    super.key,
    required this.medicalCategories,
  });

  final List<GetMedicalResponse> medicalCategories;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.horizontalPaddingVal.w,
          vertical: 40.h,
        ),
        physics: AppConstants.scrollPhysics,
        itemCount: medicalCategories.length,
        itemBuilder: (_, index) => Bounce(
          child: MedicalCategoryItem(
            medicalCategory: medicalCategories[index],
            onPressed: () => _medicalCategoriesOnPressed(index, context),
          ),
        ),
        separatorBuilder: (_, __) => MySizedBox.height20,
      ),
    );
  }

  void _medicalCategoriesOnPressed(int index, BuildContext context) {
    if (index == 0) {
      context.pushRoute(const EmergencyDiseasesRoute());
    }

    if (index == 1) {
      context.pushRoute(const MedicalInfoRoute());
    }
  }
}
