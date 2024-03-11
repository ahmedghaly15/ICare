import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/baby_cry_predictor_view_body.dart';

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
    return const Scaffold(
      body: BabyCryPredictorViewBody(),
    );
  }
}
