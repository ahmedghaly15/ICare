import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/disease_item.dart';

@RoutePage()
class MedicalInfoCategoryDiseasesView extends StatelessWidget {
  const MedicalInfoCategoryDiseasesView({
    super.key,
    required this.diseaseType,
    required this.diseases,
  });

  final String diseaseType;
  final List<DiseaseData> diseases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.padding25.h),
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: <Widget>[
            CustomSliverAppBar(title: diseaseType),
            CustomSliverGrid(
              delegate: SliverChildBuilderDelegate(
                (_, index) => ZoomIn(
                  child: DiseaseItem(
                    diseaseData: diseases[index],
                    onPressed: () => context.pushRoute(
                      MedicalInfoDiseaseDetailsRoute(
                        diseaseData: diseases[index],
                        diseaseType: diseaseType,
                      ),
                    ),
                  ),
                ),
                childCount: diseases.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
