import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_text_button_with_icon.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';

class TryItAndListenButtons extends StatelessWidget {
  const TryItAndListenButtons({
    super.key,
    required this.audioUrl,
    required this.tryItOnPressed,
    this.padding,
    this.textStyle,
    this.listenOnPressed,
  });

  final VoidCallback? tryItOnPressed;
  final String audioUrl;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final VoidCallback? listenOnPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, current) => current is ConvertIsPlayingBool,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CustomTextButtonWithIcon(
                padding: padding,
                textStyle: textStyle,
                onPressed: context.read<LevelTrainingCubit>().isPlaying
                    ? null
                    : tryItOnPressed,
                label: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                icon: const Text(AppStrings.tryIt),
              ),
            ),
            MySizedBox.width20,
            Expanded(
              child: CustomTextButtonWithIcon(
                padding: padding,
                textStyle: textStyle,
                onPressed: listenOnPressed ??
                    () {
                      context
                          .read<LevelTrainingCubit>()
                          .playPauseAudio(audioUrl);
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
              ),
            ),
          ],
        );
      },
    );
  }
}
