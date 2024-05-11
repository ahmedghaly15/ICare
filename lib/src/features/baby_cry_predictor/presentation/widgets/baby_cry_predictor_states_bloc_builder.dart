import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_result_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_widget.dart';

class BabyCryPredictorStatesBlocBuilder extends StatelessWidget {
  const BabyCryPredictorStatesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorCubit, BabyCryPredictorState>(
      buildWhen: (_, state) =>
          state is BabyCryPredictorInitial ||
          state is BabyCryPredictorSuccess ||
          state is BabyCryPredictorError ||
          state is BabyCryPredictorLoading ||
          state is GetBabyCryPredictorLastResultLoading ||
          state is GetBabyCryPredictorLastResultSuccess ||
          state is GetBabyCryPredictorLastResultError,
      builder: (context, state) {
        if (state is BabyCryPredictorInitial ||
            state is GetBabyCryPredictorLastResultLoading ||
            state is GetBabyCryPredictorLastResultError ||
            state is GetBabyCryPredictorLastResultSuccess) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: RecordingWidget(),
          );
        } else if (state is BabyCryPredictorSuccess) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: RecordingResultWidget(
              predictionResult: state.data,
            ),
          );
        } else if (state is BabyCryPredictorError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<BabyCryPredictorCubit>().emitInitialState(),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
