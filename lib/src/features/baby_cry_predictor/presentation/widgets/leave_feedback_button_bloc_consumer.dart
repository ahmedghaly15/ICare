import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';

class LeaveFeedbackButtonBlocConsumer extends StatelessWidget {
  const LeaveFeedbackButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BabyCryPredictorFeedbackCubit,
        BabyCryPredictorFeedbackState>(
      listenWhen: (_, current) =>
          current is LeaveFeedbackSuccess || current is LeaveFeedbackSuccess,
      listener: (_, state) {
        state.whenOrNull(
          leaveFeedbackSuccess: (_) {
            context
                .read<BabyCryPredictorFeedbackCubit>()
                .emitSelectedClassNull();
            ShowICareDialog.show(
              context: context,
              state: ICareDialogStates.success,
              message: AppStrings.thankYouForFeedback,
            );
          },
          leaveFeedbackError: (error) {
            ShowICareDialog.showICareDialogError(context, error);
          },
        );
      },
      buildWhen: (_, current) =>
          current is UpdateSelectedClass ||
          current is LeaveFeedbackLoading ||
          current is LeaveFeedbackError ||
          current is LeaveFeedbackSuccess,
      builder: (context, state) {
        return PrimaryButton(
          onPressed:
              context.read<BabyCryPredictorFeedbackCubit>().selectedClass !=
                      null
                  ? () => context
                      .read<BabyCryPredictorFeedbackCubit>()
                      .babyCryPredictorLeaveFeedback()
                  : () {},
          text: state is LeaveFeedbackLoading
              ? null
              : context.read<BabyCryPredictorFeedbackCubit>().selectedClass !=
                      null
                  ? AppStrings.leaveFeedback
                  : AppStrings.noneOfThem,
          child: state is LeaveFeedbackLoading
              ? const CustomCircularProgressIndicator(color: Colors.white)
              : null,
        );
      },
    );
  }
}
