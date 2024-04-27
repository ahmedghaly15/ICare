import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/speech_therapy/data/models/speech_therapy_level.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_training_data_loading.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/speech_therapy_level_item.dart';

class LevelsListViewBlocBuilder extends StatelessWidget {
  const LevelsListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetSpeechTherapyLevelsError ||
          current is GetSpeechTherapyLevelsSuccess ||
          current is GetSpeechTherapyLevelsLoading,
      builder: (context, state) {
        if (state is GetSpeechTherapyLevelsSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (_, index) {
              return JelloIn(
                child: SpeechTherapyLevelItem(
                  onTap: () => moveToLevelDetails(state.levels[index], context),
                  level: state.levels[index],
                ),
              );
            },
            itemCount: state.levels.length,
          );
        } else {
          return const LevelTrainingDataLoading();
        }
      },
    );
  }

  void moveToLevelDetails(SpeechTherapyLevel level, BuildContext context) {
    if (level.level == AppStrings.levelOne) {
      context.read<SpeechTherapyCubit>().getLevelOneTrainingData();
      context.pushRoute(const LevelOneRoute());
    } else if (level.level == AppStrings.levelTwo) {
      context.read<SpeechTherapyCubit>().getLevelTwoTrainingData();
      context.pushRoute(const LevelTwoRoute());
    } else if (level.level == AppStrings.advancedLevel) {
      context.read<SpeechTherapyCubit>().getAdvancedLevelTrainingData();
      context.pushRoute(const AdvancedLevelRoute());
    }
  }
}
