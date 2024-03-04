import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_cubit.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_state.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/disease_item.dart';

class EmergencyDiseasesBlocBuilder extends StatelessWidget {
  const EmergencyDiseasesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyCubit, EmergencyState>(
      buildWhen: (_, state) =>
          state is GetEmergencyDiseasesLoading ||
          state is GetEmergencyDiseasesSuccess ||
          state is GetEmergencyDiseasesError,
      builder: (context, state) {
        if (state is GetEmergencyDiseasesError) {
          return SliverToBoxAdapter(
            child: Text('ERROR: ${state.error}'),
          );
        } else if (state is GetEmergencyDiseasesSuccess) {
          return CustomSliverGrid(
            delegate: SliverChildBuilderDelegate(
              (_, index) => AnimationConfiguration.staggeredGrid(
                position: index,
                duration: AppConstants.animationConfigurationDuration,
                columnCount: state.data.length,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: DiseaseItem(
                      diseaseData: state.data[index],
                      onPressed: () {
                        context.pushRoute(
                          EmergencyDiseaseDetailsRoute(
                            diseaseData: state.data[index],
                          ),
                        );
                        // context
                        //     .read<EmergencyCubit>()
                        //     .getEmergencyDiseaseDetails(state.data[index].id)
                        //     .then(
                        //       (value) => null,
                        //     );
                      },
                    ),
                  ),
                ),
              ),
              childCount: state.data.length,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomCircularProgressIndicator(),
          );
        }
      },
    );
  }
}
