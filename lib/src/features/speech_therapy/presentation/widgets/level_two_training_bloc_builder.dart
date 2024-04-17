import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/blurred_level_two_training_item.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_training_data_loading.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_two_training_item.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/score_button.dart';

class LevelTwoTrainingBlocBuilder extends StatelessWidget {
  const LevelTwoTrainingBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetLevelTwoTrainingDataLoading ||
          current is GetLevelTwoTrainingDataSuccess ||
          current is GetLevelTwoTrainingDataError,
      builder: (context, state) {
        if (state is GetLevelTwoTrainingDataSuccess) {
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return state.data[index].details.available
                        ? (index % 2 == 0
                            ? FadeInDown(
                                from: 50,
                                child: LevelTwoTrainingItem(
                                    data: state.data[index]),
                              )
                            : FadeInUp(
                                from: 50,
                                child: LevelTwoTrainingItem(
                                    data: state.data[index]),
                              ))
                        : (index % 2 == 0
                            ? FadeInDown(
                                from: 50,
                                child: BlurredLevelTwoTrainingItem(
                                    data: state.data[index]),
                              )
                            : FadeInUp(
                                from: 50,
                                child: BlurredLevelTwoTrainingItem(
                                    data: state.data[index]),
                              ));
                  },
                  separatorBuilder: (_, __) => MySizedBox.height15,
                  itemCount: state.data.length,
                ),
              ),
              MySizedBox.height27,
              ScoreButton(
                onPressed: () {
                  context.read<SpeechTherapyCubit>().getScore(2);
                  context.pushRoute(ScoreRoute(level: 2));
                },
              ),
            ],
          );
        } else if (state is GetLevelTwoTrainingDataError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<SpeechTherapyCubit>().getLevelTwoTrainingData(),
          );
        } else {
          return const LevelTrainingDataLoading();
        }
      },
    );
  }
}
