import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/try_it_and_listen_buttons.dart';

class AdvancedLevelTryListenButtonsBlocBuilder extends StatelessWidget {
  const AdvancedLevelTryListenButtonsBlocBuilder({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, current) => current is UpdateSelectedAyah,
      builder: (context, state) {
        if (context.read<LevelTrainingCubit>().selectedAyah != null) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 32.h,
                    right: 16.w,
                    left: 16.w,
                  ),
                  child: TryItAndListenButtons(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    textStyle: AppTextStyles.textStyle18Bold(context).copyWith(
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
                ),
              ],
            ),
          );
        } else {
          return const SliverToBoxAdapter(child: SizedBox.shrink());
        }
      },
    );
  }
}
