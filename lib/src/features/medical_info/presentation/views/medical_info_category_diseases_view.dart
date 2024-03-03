import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';

@RoutePage()
class MedicalInfoCategoryDiseasesView extends StatelessWidget {
  const MedicalInfoCategoryDiseasesView({
    super.key,
    required this.categoryName,
    required this.disease,
  });

  final String categoryName;
  final List<DiseaseData> disease;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.horizontalPaddingVal.h),
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: <Widget>[
            CustomSliverAppBar(title: categoryName),
          ],
        ),
      ),
    );
  }
}
