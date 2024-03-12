import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/custom_count_down_timer.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/custom_record_button.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_wave_widget.dart';

class BabyCryPredictorViewBody extends StatelessWidget {
  const BabyCryPredictorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorCubit, BabyCryPredictorState>(
      builder: (context, _) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverFillRemaining(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (context.read<BabyCryPredictorCubit>().isRecording) ...[
                      const Spacer(),
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
                    if (context.read<BabyCryPredictorCubit>().isRecording ==
                        false) ...[
                      MySizedBox.height12,
                      FadeInUp(
                        duration: AppConstants.cryTranslatorAnimationDuration,
                        child: Text(
                          'Please ensure your recording does not exceed 10 seconds.',
                          style: AppTextStyles.textStyle20Bold(context),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                    if (context.read<BabyCryPredictorCubit>().audioPath !=
                        null) ...[
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<BabyCryPredictorCubit>()
                              .babyCryPredictor();
                        },
                        child: Text(
                          'Predict',
                          style: AppTextStyles.textStyle25Bold(context),
                        ),
                      ),
                    ],
                    if (context.read<BabyCryPredictorCubit>().isRecording)
                      const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
