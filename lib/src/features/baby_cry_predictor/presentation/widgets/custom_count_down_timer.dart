import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';

class CustomCountDownTimer extends StatelessWidget {
  const CustomCountDownTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      controller: context.read<BabyCryPredictorCubit>().countDownController,
      onEnd: context.read<BabyCryPredictorCubit>().onTimerEnd,
      widgetBuilder: (_, time) {
        if (time == null) {
          return Text(
            '00:00',
            style: AppTextStyles.textStyle20Bold(context),
          );
        }
        return Text(
          '${time.min ?? '00'}:${time.sec.toString().padLeft(2, '0')}',
          style: AppTextStyles.textStyle20Bold(context),
        );
      },
    );
  }
}
