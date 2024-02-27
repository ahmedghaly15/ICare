import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/config/themes/app_colors.dart';
import 'package:icare/src/config/themes/app_text_styles.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/primary_button.dart';
import 'package:icare/src/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/custom_dot_indicators.dart';
import 'package:icare/src/features/onboarding/presentation/widgets/page_view_item.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: <Widget>[
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.primaryColor,
                  textStyle: AppTextStyles.textStyle24Medium(context),
                ),
                onPressed: () => context.read<OnboardingCubit>().skip(context),
                icon: const Text(AppStrings.skip),
                label: const Icon(
                  Icons.arrow_right_alt,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: AppConstants.horizontalPadding,
            sliver: SliverToBoxAdapter(
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
          ),
          SliverPadding(
            padding: AppConstants.horizontalPadding,
            sliver: SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 65.h),
                    child: Row(
                      children: <Widget>[
                        const Expanded(
                          child: CustomDotsIndicators(),
                        ),
                        Expanded(
                          child: PrimaryButton(
                            onPressed: () => context
                                .read<OnboardingCubit>()
                                .navigateAmongPages(context),
                            text: AppStrings.next,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
