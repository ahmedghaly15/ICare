import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/disease_item.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

class MedicalInfoCategoriesSliverList extends StatelessWidget {
  const MedicalInfoCategoriesSliverList({
    super.key,
    required this.categories,
  });

  final List<GetMedicalInfoResponse> categories;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return FadeInRight(
            child: AspectRatio(
              aspectRatio: AppConstants.medicalInfoCategoryItemAspectRatio,
              child: Container(
                margin: EdgeInsets.only(bottom: 16.h),
                child: DiseaseItem(
                  diseaseType: categories[index].diseaseType,
                  diseaseTypeImage: categories[index].diseaseTypeImage,
                  onPressed: () => context.pushRoute(
                    MedicalInfoCategoryDiseasesRoute(
                      diseaseType: categories[index].diseaseType,
                      diseases: categories[index].diseases,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        childCount: categories.length,
      ),
    );
  }
}
