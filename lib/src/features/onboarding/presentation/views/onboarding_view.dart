import 'package:auto_route/auto_route.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/page_view_item.dart';

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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: ExpandablePageView.builder(
              scrollDirection: Axis.horizontal,
              animateFirstPage: true,
              animationDuration: AppConstants.onboardingScrollingDuration,
              padEnds: false,
              itemCount:
                  context.read<OnboardingCubit>().onboardingItems().length,
              animationCurve: AppConstants.onboardingScrollingCurve,
              controller: context.read<OnboardingCubit>().pageController,
              onPageChanged: (int index) {
                context.read<OnboardingCubit>().onChangePageIndex(index);
              },
              itemBuilder: (context, index) => PageViewItem(
                pageInfo:
                    context.read<OnboardingCubit>().onboardingItems()[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
