import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_two_training_bloc_builder.dart';

@RoutePage()
class LevelTwoView extends StatelessWidget {
  const LevelTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppConstants.viewAppBarPadding,
              sliver: const CustomSliverAppBar(title: AppStrings.levelTwo),
            ),
            const SliverFillRemaining(
              child: GradientColorfulContainer(
                child: LevelTwoTrainingBlocBuilder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
