import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/custom_sliver_grid.dart';
import 'package:icare/src/core/widgets/disease_item.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_state.dart';

class MedicalInfoDiseasesBlocBuilder extends StatelessWidget {
  const MedicalInfoDiseasesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicalInfoCubit, MedicalInfoState>(
      buildWhen: (_, state) =>
          state is GetMedicalInfoSuccess ||
          state is GetMedicalInfoError ||
          state is GetMedicalInfoLoading,
      builder: (context, state) {
        if (state is GetMedicalInfoError) {
          return SliverToBoxAdapter(
            child: Text('ERROR: ${state.error}'),
          );
        } else if (state is GetMedicalInfoSuccess) {
          return CustomSliverGrid(
            delegate: SliverChildBuilderDelegate(
              (_, index) => AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: state.data.length,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: DiseaseItem(
                      diseaseImageUrl: state.data[index].diseaseTypeImage,
                      diseaseName: state.data[index].diseaseType,
                      onPressed: () {},
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
