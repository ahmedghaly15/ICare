import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/speech_therapy/data/models/mark_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_stop_and_mark_audio_button.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/try_it_and_listen_buttons.dart';

class TrainButtonsBlocConsumer extends StatelessWidget {
  const TrainButtonsBlocConsumer({
    super.key,
    required this.id,
    required this.level,
    required this.audioUrl,
    required this.onMarkSuccess,
  });

  final int id, level;
  final String audioUrl;
  final void Function(MarkResponse data) onMarkSuccess;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      from: 50,
      child: BlocConsumer<LevelTrainingCubit, LevelTrainingState>(
        listenWhen: (_, current) =>
            current is MarkError || current is MarkSuccess,
        listener: (context, state) {
          state.whenOrNull(
            markError: (error) {
              ShowICareDialog.showICareDialogError(context, error);
            },
            markSuccess: onMarkSuccess,
          );
        },
        buildWhen: (_, current) =>
            current is UserIsTryingNow ||
            current is MarkSuccess ||
            current is LevelTrainingInitial ||
            current is MarkError ||
            current is MarkLoading,
        builder: (context, state) {
          if (state is MarkSuccess ||
              state is LevelTrainingInitial ||
              state is MarkError) {
            return TryItAndListenButtons(
              tryItOnPressed: () {
                context
                    .read<LevelTrainingCubit>()
                    .recordAndMark(id, level, context);
              },
              audioUrl: audioUrl,
            );
          } else if (state is MarkLoading) {
            return const CustomCircularProgressIndicator();
          } else {
            return CustomStopAndMarkAudioButton(
              id: id,
              level: level,
            );
          }
        },
      ),
    );
  }
}
