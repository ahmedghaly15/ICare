import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/custom_sliver_app_bar.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/cubits/baby_cry_predictor/baby_cry_predictor_cubit.dart';
import 'package:icare/src/features/baby_cry_predictor/presentation/widgets/baby_cry_predictor_states_bloc_builder.dart';

@RoutePage()
class BabyCryPredictorView extends StatelessWidget implements AutoRouteWrapper {
  const BabyCryPredictorView({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<BabyCryPredictorCubit>()
        ..showNotifyingUserAboutEnhancingDialog(context)
        ..getBabyCryPredictorLastResult(context),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomSliverAppBar(title: AppStrings.cryTranslation),
            BabyCryPredictorStatesBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
