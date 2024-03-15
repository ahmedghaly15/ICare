import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';

class MedicalCategoryLoadingListView extends StatelessWidget {
  const MedicalCategoryLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.horizontalPaddingVal.w,
        vertical: 40.h,
      ),
      physics: AppConstants.scrollPhysics,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (_, __) => const AspectRatio(
        aspectRatio: AppConstants.medicalCategoryItemAspectRatio,
        child: ShimmerWidget(),
      ),
      separatorBuilder: (_, __) => MySizedBox.height20,
    );
  }
}
