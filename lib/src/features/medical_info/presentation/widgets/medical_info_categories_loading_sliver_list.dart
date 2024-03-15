import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class MedicalInfoCategoriesLoadingSliverList extends StatelessWidget {
  const MedicalInfoCategoriesLoadingSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => AspectRatio(
          aspectRatio: AppConstants.medicalInfoCategoryItemAspectRatio,
          child: ShimmerWidget(
            margin: EdgeInsets.only(bottom: 16.h),
          ),
        ),
        childCount: 8,
      ),
    );
  }
}
