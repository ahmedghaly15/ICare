import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';

class SentenceContainerBlocBuilder extends StatelessWidget {
  const SentenceContainerBlocBuilder({
    super.key,
    required this.sentence,
  });

  final String sentence;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, current) =>
          current is LevelTrainingInitial ||
          current is UserIsTryingNow ||
          current is MarkSuccess,
      builder: (context, state) {
        if (state is LevelTrainingInitial || state is UserIsTryingNow) {
          return FadeInDown(
            from: 50,
            child: Container(
              padding: EdgeInsets.all(15.h),
              decoration: BoxDecoration(
                color: AppColors.secondWhiteColor,
                boxShadow: [
                  AppConstants.primaryBoxShadow,
                ],
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    sentence,
                    style: AppTextStyles.textStyle24Medium,
                    textAlign: TextAlign.center,
                  ),
                  MySizedBox.height15,
                  Text(
                    AppStrings.whoAmI,
                    style: AppTextStyles.textStyle25Bold,
                  ),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
