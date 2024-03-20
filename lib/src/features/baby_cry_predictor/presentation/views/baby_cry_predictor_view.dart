import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_result_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_widget.dart';

@RoutePage()
class BabyCryPredictorView extends StatelessWidget implements AutoRouteWrapper {
  const BabyCryPredictorView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<BabyCryPredictorCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BabyCryPredictorCubit, BabyCryPredictorState>(
        buildWhen: (_, state) =>
            state is BabyCryPredictorInitial ||
            state is BabyCryPredictorSuccess ||
            state is BabyCryPredictorError ||
            state is BabyCryPredictorLoading,
        builder: (context, state) {
          if (state is BabyCryPredictorInitial) {
            return const RecordingWidget();
          } else if (state is BabyCryPredictorSuccess) {
            return RecordingResultWidget(
              predictionResult: state.data,
            );
          } else if (state is BabyCryPredictorError) {
            return CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () => context.maybePop(),
            );
          } else {
            return const Center(
              child: CustomCircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
