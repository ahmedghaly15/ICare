import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/disease_item.dart';

@RoutePage()
class MedicalInfoCategoryDiseasesView extends StatelessWidget {
  const MedicalInfoCategoryDiseasesView({
    super.key,
    required this.categoryName,
    required this.diseases,
  });

  final String categoryName;
  final List<DiseaseData> diseases;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.horizontalPaddingVal.h),
        child: CustomScrollView(
          physics: AppConstants.scrollPhysics,
          slivers: <Widget>[
            CustomSliverAppBar(title: categoryName),
            CustomSliverGrid(
              delegate: SliverChildBuilderDelegate(
                (_, index) => AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: AppConstants.animationConfigurationDuration,
                  columnCount: diseases.length,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: DiseaseItem(
                        diseaseImageUrl: diseases[index].diseaseImage,
                        diseaseName: diseases[index].diseaseName,
                        onPressed: () {},
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
