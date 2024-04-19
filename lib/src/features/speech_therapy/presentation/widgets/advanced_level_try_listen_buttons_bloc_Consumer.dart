import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_circular_percent_indicator.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/custom_stop_and_mark_audio_button.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/try_it_and_listen_buttons.dart';

class AdvancedLevelTryListenButtonsBlocConsumer extends StatelessWidget {
  const AdvancedLevelTryListenButtonsBlocConsumer({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LevelTrainingCubit, LevelTrainingState>(
      listenWhen: (_, current) =>
          current is AdvancedLevelMarkingError ||
          current is AdvancedLevelMarkingSuccess,
      listener: (context, state) {
        state.whenOrNull(
          advancedLevelMarkingError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
          advancedLevelMarkingSuccess: (data) {
            context
                .read<SpeechTherapyCubit>()
                .handleAdvancedLevelMarkSuccess(context, data);
          },
        );
      },
      buildWhen: (_, current) =>
          current is UpdateSelectedAyah ||
          current is UserIsTryingNow ||
          current is AdvancedLevelMarkingError ||
          current is AdvancedLevelMarkingSuccess ||
          current is AdvancedLevelMarkingLoading,
      builder: (context, state) {
        if (context.read<LevelTrainingCubit>().selectedAyah != null) {
          return SliverPadding(
            padding: EdgeInsets.only(
              bottom: 32.h,
              right: 16.w,
              left: 16.w,
            ),
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  if (state is AdvancedLevelMarkingError ||
                      state is UpdateSelectedAyah)
                    TryItAndListenButtons(
                      padding: EdgeInsets.symmetric(vertical: 4.h),
                      textStyle:
                          AppTextStyles.textStyle18Bold(context).copyWith(
                        color: Colors.white,
                      ),
                      audioUrl: context
                          .read<LevelTrainingCubit>()
                          .selectedAyah!
                          .ayahAudioUrl,
                      tryItOnPressed: () {
                        context
                            .read<LevelTrainingCubit>()
                            .recordAndMarkAdvancedLevel(id, context);
                      },
                      listenOnPressed: () => context
                          .read<LevelTrainingCubit>()
                          .playAndPauseAdvancedLevel(
                              context.read<LevelTrainingCubit>().selectedAyah!,
                              context),
                    ),
                  if (state is AdvancedLevelMarkingLoading)
                    const CustomCircularProgressIndicator(),
                  if (state is UserIsTryingNow)
                    CustomStopAndMarkAudioButton(
                      onPressed: () {
                        context
                            .read<LevelTrainingCubit>()
                            .recordAndMarkAdvancedLevel(id, context);
                      },
                    ),
                  if (state is AdvancedLevelMarkingSuccess)
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: PrimaryButton(
                            onPressed: () {
                              context
                                  .read<LevelTrainingCubit>()
                                  .emitUpdateSelectedAyah();
                            },
                            text: AppStrings.tryAgain,
                            hasShadow: false,
                          ),
                        ),
                        MySizedBox.width27,
                        Expanded(
                          child: CustomCircularPercentIndicator(
                              percent: state.data.percent),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }
}
