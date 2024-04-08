import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/custom_indicator.dart';

class CustomDotsIndicatorsBlocBuilder extends StatelessWidget {
  const CustomDotsIndicatorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (_, current) => current is PageViewIndexChange,
      builder: (context, state) {
        return Row(
          children: List.generate(
            context.read<OnboardingCubit>().onboardingItems().length,
            (index) => CustomDotIndicator(
                isActive:
                    index == context.read<OnboardingCubit>().currentIndex),
            growable: false,
          ),
        );
      },
    );
  }
}
