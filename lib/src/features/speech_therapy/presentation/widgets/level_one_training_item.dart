import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_cached_network_image.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';

class LevelOneTrainingItem extends StatelessWidget {
  const LevelOneTrainingItem({
    super.key,
    required this.data,
    required this.onTap,
  });

  final LevelOneTrainingResponse data;
  final VoidCallback onTap;

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
        onTap: onTap,
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
