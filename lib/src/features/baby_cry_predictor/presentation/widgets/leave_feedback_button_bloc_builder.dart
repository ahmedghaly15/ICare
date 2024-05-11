import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';

class LeaveFeedbackButtonBlocBuilder extends StatelessWidget {
  const LeaveFeedbackButtonBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorFeedbackCubit,
        BabyCryPredictorFeedbackState>(
      buildWhen: (_, current) => current is UpdateSelectedClass,
      builder: (context, state) {
        return PrimaryButton(
          onPressed:
              context.read<BabyCryPredictorFeedbackCubit>().selectedClass !=
                      null
                  ? () => context
                      .read<BabyCryPredictorFeedbackCubit>()
                      .babyCryPredictorLeaveFeedback()
                  : () {},
          text: context.read<BabyCryPredictorFeedbackCubit>().selectedClass !=
                  null
              ? AppStrings.leaveFeedback
              : AppStrings.noneOfThem,
        );
      },
    );
  }
}
