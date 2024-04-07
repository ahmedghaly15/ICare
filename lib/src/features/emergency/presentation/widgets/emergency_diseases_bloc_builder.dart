import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_cubit.dart';
import 'package:icare/src/features/emergency/presentation/cubit/emergency_state.dart';
import 'package:icare/src/features/emergency/presentation/widgets/emergency_diseases_grid_view.dart';

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
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<EmergencyCubit>().getEmergencyDiseases(),
            ),
          );
        } else if (state is GetEmergencyDiseasesSuccess) {
          return EmergencyDiseasesSliverGrid(diseases: state.data);
        } else {
          return CustomSliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const ShimmerWidget(),
            ),
          );
        }
      },
    );
  }
}
