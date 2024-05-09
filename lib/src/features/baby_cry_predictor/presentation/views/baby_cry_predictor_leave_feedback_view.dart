import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';

@RoutePage()
class BabyCryPredictorLeaveFeedbackView extends StatelessWidget
    implements AutoRouteWrapper {
  const BabyCryPredictorLeaveFeedbackView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BabyCryPredictorFeedbackCubit>(
      create: (_) => getIt.get<BabyCryPredictorFeedbackCubit>()
        ..getBabyCryPredictorClasses(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
