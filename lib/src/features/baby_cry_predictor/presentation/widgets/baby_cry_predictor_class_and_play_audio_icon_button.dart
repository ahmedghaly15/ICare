import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_assets.dart';
import 'package:icare/src/features/baby_cry_predictor/data/models/baby_cry_predictor_class.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';

class BabyCryPredictorClassAndPlayAudioIconButton extends StatelessWidget {
  const BabyCryPredictorClassAndPlayAudioIconButton({
    super.key,
    required this.babyCryPredictorClass,
    required this.index,
  });

  final BabyCryPredictorClass babyCryPredictorClass;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          babyCryPredictorClass.className,
          style: AppTextStyles.textStyle16Bold,
        ),
        const Spacer(),
        BlocBuilder<BabyCryPredictorFeedbackCubit,
            BabyCryPredictorFeedbackState>(
          buildWhen: (_, current) => current is UpdatePlayingIndex,
          builder: (context, state) {
            return IconButton(
              onPressed: () =>
                  context.read<BabyCryPredictorFeedbackCubit>().playPauseAudio(
                        babyCryPredictorClass.audio,
                        index,
                      ),
              icon: SvgPicture.asset(
                  context.read<BabyCryPredictorFeedbackCubit>().playingIndex ==
                          index
                      ? AppAssets.svgsPauseAudioIcon
                      : AppAssets.svgsPlayAudioIcon),
            );
          },
        ),
      ],
    );
  }
}
