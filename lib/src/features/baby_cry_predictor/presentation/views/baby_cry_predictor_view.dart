import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubit/baby_cry_predictor_state.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_result_widget.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/recording_widget.dart';

@RoutePage()
class BabyCryPredictorView extends StatelessWidget implements AutoRouteWrapper {
  const BabyCryPredictorView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<BabyCryPredictorCubit>(),
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
              sliver:
                  const CustomSliverAppBar(title: AppStrings.cryTranslation),
            ),
            BlocBuilder<BabyCryPredictorCubit, BabyCryPredictorState>(
              buildWhen: (_, state) =>
                  state is BabyCryPredictorInitial ||
                  state is BabyCryPredictorSuccess ||
                  state is BabyCryPredictorError ||
                  state is BabyCryPredictorLoading,
              builder: (context, state) {
                if (state is BabyCryPredictorInitial) {
                  return const SliverFillRemaining(
                    hasScrollBody: false,
                    child: RecordingWidget(),
                  );
                } else if (state is BabyCryPredictorSuccess) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: RecordingResultWidget(
                      predictionResult: state.data,
                    ),
                  );
                } else if (state is BabyCryPredictorError) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: CustomErrorWidget(
                      error: state.error,
                      tryAgainOnPressed: () => context
                          .read<BabyCryPredictorCubit>()
                          .emitInitialState(),
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
            ),
          ],
        ),
      ),
    );
  }
}
