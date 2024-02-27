import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/custom_indicator.dart';

class CustomDotsIndicators extends StatefulWidget {
  const CustomDotsIndicators({
    super.key,
  });

  @override
  State<CustomDotsIndicators> createState() => _CustomDotsIndicatorsState();
}

class _CustomDotsIndicatorsState extends State<CustomDotsIndicators> {
  int _currentIndex = 0;

  @override
  void initState() {
    context.read<OnboardingCubit>().pageController.addListener(() {
      _currentIndex =
          context.read<OnboardingCubit>().pageController.page!.round();

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        context.read<OnboardingCubit>().onboardingItems().length,
        (index) => CustomDotIndicator(isActive: index == _currentIndex),
        growable: false,
      ),
    );
  }
}
