import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/speech_therapy_level_item.dart';

class LevelsList extends StatelessWidget {
  const LevelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        AppConstants.speechTherapyLevelsImages.length,
        (index) => SpeechTherapyLevelItem(
          onTap: () => moveToLevelDetails(index),
          image: AppConstants.speechTherapyLevelsImages[index],
          title: AppConstants.speechTherapyLevelsTitles[index],
          description: AppConstants.speechTherapyLevelsDescriptions[index],
        ),
      ),
    );
  }

  void moveToLevelDetails(int index) {
    if (AppConstants.speechTherapyLevelsTitles[index] == AppStrings.levelOne) {
    } else if (AppConstants.speechTherapyLevelsTitles[index] ==
        AppStrings.levelTwo) {
    } else if (AppConstants.speechTherapyLevelsTitles[index] ==
        AppStrings.advancedLevel) {}
  }
}
