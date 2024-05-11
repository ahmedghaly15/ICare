import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/levels_list_view_bloc_builder.dart';

@RoutePage()
class SpeechTherapyView extends StatelessWidget {
  const SpeechTherapyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(title: AppStrings.speechTherapy),
            SliverFillRemaining(
              child: GradientColorfulContainer(
                child: LevelsListViewBlocBuilder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
