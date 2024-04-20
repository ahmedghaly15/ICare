import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/custom_count_down_timer.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/custom_record_button.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_wave_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/wavy_cry_translator_svg_image.dart';

class RecordingWidget extends StatelessWidget {
  const RecordingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorCubit, BabyCryPredictorState>(
      builder: (context, state) {
        return Column(
          children: <Widget>[
            const Spacer(),
            if (context.read<BabyCryPredictorCubit>().isRecording) ...[
              FadeInDown(
                duration: AppConstants.cryTranslatorAnimationDuration,
                child: const CustomCountDownTimer(),
              ),
              const Spacer(),
              FadeInDown(
                duration: AppConstants.cryTranslatorAnimationDuration,
                child: const RecordingWaveWidget(),
              ),
              const Spacer(),
            ],
            FadeInUp(
              duration: AppConstants.cryTranslatorAnimationDuration,
              child: const CustomRecordButton(),
            ),
            if (context.read<BabyCryPredictorCubit>().isRecording == false) ...[
              MySizedBox.height12,
              FadeInUp(
                duration: AppConstants.cryTranslatorAnimationDuration,
                child: Text(
                  'Please ensure your recording\ndoes not exceed 10 seconds.',
                  style: AppTextStyles.textStyle13Bold,
                  textAlign: TextAlign.center,
                ),
              )
            ],
            const Spacer(),
            SizedBox(
              width: SizeConfig.width,
              child: const WavyCryTranslatorSvgImage(),
            ),
          ],
        );
      },
    );
  }
}
