import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/speech_therapy_level_item.dart';

class LevelsList extends StatelessWidget {
  const LevelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        AppConstants.speechTherapyLevelsImages.length,
        (index) => JelloIn(
          child: SpeechTherapyLevelItem(
            onTap: () => moveToLevelDetails(index, context),
            image: AppConstants.speechTherapyLevelsImages[index],
            title: AppConstants.speechTherapyLevelsTitles[index],
            description: AppConstants.speechTherapyLevelsDescriptions[index],
          ),
        ),
      ),
    );
  }

  void moveToLevelDetails(int index, BuildContext context) {
    if (AppConstants.speechTherapyLevelsTitles[index] == AppStrings.levelOne) {
      context.read<SpeechTherapyCubit>().getLevelOneTrainingData();
      context.pushRoute(const LevelOneRoute());
    } else if (AppConstants.speechTherapyLevelsTitles[index] ==
        AppStrings.levelTwo) {
    } else if (AppConstants.speechTherapyLevelsTitles[index] ==
        AppStrings.advancedLevel) {}
  }
}
