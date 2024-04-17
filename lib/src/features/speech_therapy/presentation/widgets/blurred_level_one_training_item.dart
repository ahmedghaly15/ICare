import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/blurred_level_training_item.dart';

class BlurredLevelOneTrainingItem extends StatelessWidget {
  const BlurredLevelOneTrainingItem({super.key, required this.data});

  final LevelOneTrainingResponse data;

  @override
  Widget build(BuildContext context) {
    return BlurredLevelTrainingItem(
      available: data.details.available,
      imageUrl: data.details.imageUrl,
      onTap: () {
        context.pushRoute(TrainingOnLevelOneAnimalRoute(data: data));
      },
    );
  }
}
