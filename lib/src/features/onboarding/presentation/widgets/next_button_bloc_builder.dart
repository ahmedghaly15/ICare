import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_state.dart';

class NextButtonBlocBuilder extends StatelessWidget {
  const NextButtonBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (_, current) => current is PageViewIndexChange,
      builder: (context, state) {
        return PrimaryButton(
          onPressed: () =>
              context.read<OnboardingCubit>().navigateAmongPages(context),
          text: context.read<OnboardingCubit>().isLastBoarding
              ? AppStrings.getStarted
              : AppStrings.next,
        );
      },
    );
  }
}
