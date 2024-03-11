import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_cubit.dart';
import 'package:icare/src/features/cry_translator/presentation/cubit/cry_translator_state.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/custom_count_down_timer.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/custom_record_button.dart';
import 'package:icare/src/features/cry_translator/presentation/widgets/recording_wave_widget.dart';

class CryTranslatorViewBody extends StatelessWidget {
  const CryTranslatorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CryTranslatorCubit, CryTranslatorState>(
      builder: (context, _) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          alignment: Alignment.center,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    if (context.read<CryTranslatorCubit>().isRecording) ...[
                      const Spacer(),
                      FadeInDown(
                        duration: AppConstants.cryTranslatorAnimationDuration,
                        child: const CustomCountDownTimer(),
                      ),
                    ],
                    if (context.read<CryTranslatorCubit>().isRecording) ...[
                      const Spacer(),
                      FadeInDown(
                        duration: AppConstants.cryTranslatorAnimationDuration,
                        child: const RecordingWaveWidget(),
                      )
                    ],
                    if (context.read<CryTranslatorCubit>().isRecording)
                      const Spacer(),
                    FadeInUp(
                      duration: AppConstants.cryTranslatorAnimationDuration,
                      child: const CustomRecordButton(),
                    ),
                    if (context.read<CryTranslatorCubit>().isRecording ==
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
                    if (context.read<CryTranslatorCubit>().isRecording)
                      const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
