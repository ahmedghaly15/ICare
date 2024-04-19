import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/advanced_level_scores_list_bloc_builder.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';

@RoutePage()
class AdvancedLevelScoreView extends StatelessWidget {
  const AdvancedLevelScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.score),
            ),
            SliverFillRemaining(
              child: GradientColorfulContainer(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 6.w,
                ),
                child: const AdvancedLevelScoresListBlocBuilder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
