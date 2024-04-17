import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_text_button_with_icon.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_stop_and_mark_audio_button.dart';

class TrainButtonsBlocConsumer extends StatelessWidget {
  const TrainButtonsBlocConsumer({
    super.key,
    required this.data,
  });

  final LevelOneTrainingResponse data;

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
            markSuccess: (data) {
              getIt
                  .get<CacheHelper>()
                  .removeData(key: AppStrings.cachedLevelOneTrainingData)
                  .then((value) {
                if (value) {
                  context.read<SpeechTherapyCubit>().getLevelOneTrainingData();
                }
              });
            },
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
            return Row(
              children: <Widget>[
                Expanded(
                  child: CustomTextButtonWithIcon(
                    onPressed: () {
                      context
                          .read<LevelTrainingCubit>()
                          .recordAndMark(data.id, data.level, context);
                    },
                    label: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    icon: const Text(AppStrings.tryIt),
                  ),
                ),
                MySizedBox.width20,
                Expanded(
                  child: BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
                    buildWhen: (_, current) => current is ConvertIsPlayingBool,
                    builder: (context, state) {
                      return CustomTextButtonWithIcon(
                        onPressed: () {
                          context
                              .read<LevelTrainingCubit>()
                              .playPauseAudio(data.details.audioUrl);
                        },
                        label: Icon(
                          context.read<LevelTrainingCubit>().isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                        ),
                        icon: Text(context.read<LevelTrainingCubit>().isPlaying
                            ? AppStrings.pause
                            : AppStrings.listen),
                      );
                    },
                  ),
                ),
              ],
            );
          } else if (state is MarkLoading) {
            return const CustomCircularProgressIndicator();
          } else {
            return CustomStopAndMarkAudioButton(
              id: data.id,
              level: data.level,
            );
          }
        },
      ),
    );
  }
}
