import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/onboarding_view_body.dart';

@RoutePage()
class OnboardingView extends StatelessWidget implements AutoRouteWrapper {
  const OnboardingView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<OnboardingCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
