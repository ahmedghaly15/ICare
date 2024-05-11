import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor_feedback/bab_cry_predictor_feedback_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/baby_cry_predictor_class_item_bloc_builder.dart';

class BabyCryPredictorClassesSliverListBlocBuilder extends StatelessWidget {
  const BabyCryPredictorClassesSliverListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BabyCryPredictorFeedbackCubit,
        BabyCryPredictorFeedbackState>(
      buildWhen: (_, current) =>
          current is GetBabyCryPredictorClassesLoading ||
          current is GetBabyCryPredictorClassesSuccess ||
          current is GetBabyCryPredictorClassesError,
      builder: (context, state) {
        if (state is GetBabyCryPredictorClassesSuccess) {
          return SliverList.builder(
            itemBuilder: (_, index) {
              return BabyCryPredictorClassItemBlocBuilder(
                babyCryPredictorClass: state.classes[index],
                index: index,
              );
            },
            itemCount: state.classes.length,
          );
        } else if (state is GetBabyCryPredictorClassesError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () => context
                  .read<BabyCryPredictorFeedbackCubit>()
                  .getBabyCryPredictorClasses(),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
