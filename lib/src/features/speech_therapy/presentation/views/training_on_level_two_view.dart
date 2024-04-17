import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/speech_therapy/speech_therapy_cubit.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/circular_percent_indicator_bloc_builder.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/gradient_colorful_container.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/sentence_container_bloc_builder.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/train_buttons_bloc_consumer.dart';
import 'package:icare/src/features/speech_therapy/presentation/widgets/train_image.dart';

@RoutePage()
class TrainingOnLevelTwoView extends StatelessWidget
    implements AutoRouteWrapper {
  const TrainingOnLevelTwoView({super.key, required this.data});

  final LevelTwoTrainingResponse data;

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
              child: GradientColorfulContainer(
                radiusVal: AppConstants.trainGradientContainerRadius,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: TrainImage(imageUrl: data.details.imageUrl)),
                    MySizedBox.height30,
                    const CircularPercentIndicatorBlocBuilder(),
                    SentenceContainerBlocBuilder(
                      sentence: data.details.sentence,
                    ),
                    MySizedBox.height30,
                    TrainButtonsBlocConsumer(
                      id: data.id,
                      level: data.level,
                      audioUrl: data.details.audioUrl,
                      onMarkSuccess: (data) => context
                          .read<SpeechTherapyCubit>()
                          .handleLevelTwoMarkSuccess(context, data),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
