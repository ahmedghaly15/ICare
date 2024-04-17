import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';

class LevelOneTrainingItem extends StatelessWidget {
  const LevelOneTrainingItem({
    super.key,
    required this.data,
  });

  final LevelOneTrainingResponse data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.levelOneItemHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          AppConstants.primaryBoxShadow,
        ],
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: InkWell(
        onTap: data.details.available
            ? () {
                context.pushRoute(TrainingOnLevelOneAnimalRoute(data: data));
              }
            : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.r),
          child: CustomCachedNetworkImage(
            imageUrl: data.details.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
