import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/core/utils/size_config.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_state.dart';
import 'package:icare/src/features/medical/presentation/widgets/disease_item.dart';

class EmergencyDiseasesBlocBuilder extends StatelessWidget {
  const EmergencyDiseasesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicalCubit, MedicalState>(
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
          return SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: SizeConfig.width,
                mainAxisExtent: SizeConfig.height * 0.25,
                mainAxisSpacing: 16.h,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (_, index) => AnimationConfiguration.staggeredGrid(
                  position: index,
                  columnCount: state.data.length,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: DiseaseItem(
                        diseaseInfo: state.data[index],
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                childCount: state.data.length,
              ),
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
