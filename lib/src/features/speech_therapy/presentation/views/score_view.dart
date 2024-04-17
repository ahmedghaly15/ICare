import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/data/models/score_params.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/score/score_cubit.dart';

@RoutePage()
class ScoreView extends StatelessWidget implements AutoRouteWrapper {
  const ScoreView({super.key, required this.level});

  final int level;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ScoreCubit>(
      create: (_) => getIt.get<ScoreCubit>()
        ..getScore(ScoreParams(userId: Helper.uId!, level: level)),
      child: this,
    );
  }

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
          ],
        ),
      ),
    );
  }
}
