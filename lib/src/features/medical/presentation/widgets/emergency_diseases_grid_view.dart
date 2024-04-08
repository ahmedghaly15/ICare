import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/disease_item.dart';

class EmergencyDiseasesSliverGrid extends StatelessWidget {
  const EmergencyDiseasesSliverGrid({
    super.key,
    required this.diseases,
  });

  final List<DiseaseData> diseases;

  @override
  Widget build(BuildContext context) {
    return CustomSliverGrid(
      delegate: SliverChildBuilderDelegate(
        (_, index) => AnimationConfiguration.staggeredGrid(
          position: index,
          duration: AppConstants.animationConfigurationDuration,
          columnCount: diseases.length,
          child: ScaleAnimation(
            child: FadeInAnimation(
              child: DiseaseItem(
                diseaseData: diseases[index],
                onPressed: () {
                  context.pushRoute(
                    EmergencyDiseaseDetailsRoute(
                      diseaseData: diseases[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        childCount: diseases.length,
      ),
    );
  }
}