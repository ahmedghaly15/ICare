import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_circular_percent_indicator.dart';

class CircularPercentIndicatorBlocBuilder extends StatelessWidget {
  const CircularPercentIndicatorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, current) =>
          current is MarkSuccess ||
          current is UserIsTryingNow ||
          current is LevelTrainingInitial,
      builder: (context, state) {
        if (state is MarkSuccess) {
          return Column(
            children: <Widget>[
              FadeInDown(
                from: 50,
                child:
                    CustomCircularPercentIndicator(percent: state.data.percent),
              ),
              MySizedBox.height25,
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
