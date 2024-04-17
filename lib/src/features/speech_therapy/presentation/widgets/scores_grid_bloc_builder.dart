import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/score_item.dart';

class ScoresGridBlocBuilder extends StatelessWidget {
  const ScoresGridBlocBuilder({
    super.key,
    required this.level,
  });

  final int level;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeechTherapyCubit, SpeechTherapyState>(
      buildWhen: (_, current) =>
          current is GetScoreLoading ||
          current is GetScoreSuccess ||
          current is GetScoreError,
      builder: (context, state) {
        if (state is GetScoreSuccess) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (context, index) {
              return index % 2 == 0
                  ? FadeInUp(
                      from: 50,
                      child:
                          ScoreItem(scoreDetail: state.data.subLevels[index]),
                    )
                  : FadeInDown(
                      from: 50,
                      child:
                          ScoreItem(scoreDetail: state.data.subLevels[index]),
                    );
            },
            itemCount: state.data.subLevels.length,
          );
        } else if (state is GetScoreError) {
          return CustomErrorWidget(
            error: state.error,
            tryAgainOnPressed: () =>
                context.read<SpeechTherapyCubit>().getScore(level),
          );
        } else {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemBuilder: (_, __) => const ShimmerWidget(
              circularRadiusVal: 15,
            ),
            itemCount: 15,
          );
        }
      },
    );
  }
}
