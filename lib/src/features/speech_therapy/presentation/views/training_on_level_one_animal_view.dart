import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/level_training_item.dart';

@RoutePage()
class TrainingOnLevelOneAnimalView extends StatelessWidget
    implements AutoRouteWrapper {
  const TrainingOnLevelOneAnimalView({super.key, required this.data});

  final LevelOneTrainingResponse data;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<LevelTrainingCubit>(
      create: (_) => getIt.get<LevelTrainingCubit>(),
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
              sliver: const CustomSliverAppBar(title: ''),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: LevelTrainingItem(data: data),
            ),
          ],
        ),
      ),
    );
  }
}
