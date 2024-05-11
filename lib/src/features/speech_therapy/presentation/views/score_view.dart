import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/scores_grid_bloc_builder.dart';

@RoutePage()
class ScoreView extends StatelessWidget {
  const ScoreView({super.key, required this.level});

  final int level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const CustomSliverAppBar(title: AppStrings.score),
            SliverFillRemaining(
              child: GradientColorfulContainer(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 10.w,
                ),
                child: ScoresGridBlocBuilder(level: level),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
