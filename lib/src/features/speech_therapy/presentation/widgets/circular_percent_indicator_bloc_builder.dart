import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorBlocBuilder extends StatelessWidget {
  const CircularPercentIndicatorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LevelTrainingCubit, LevelTrainingState>(
      buildWhen: (_, current) =>
          current is MarkSuccess || current is UserIsTryingNow,
      builder: (context, state) {
        if (state is MarkSuccess) {
          return Column(
            children: <Widget>[
              FadeInDown(
                from: 50,
                child: CircularPercentIndicator(
                  radius: 50.r,
                  percent: state.data.percent / 100,
                  progressColor: AppColors.primaryColor,
                  backgroundColor: Colors.transparent,
                  animation: true,
                  animationDuration: 800,
                  fillColor: Colors.transparent,
                  center: Text(
                    '${state.data.percent}%',
                    style: AppTextStyles.textStyle20Bold(context).copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              MySizedBox.height25,
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
