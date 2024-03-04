import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
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
          return SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: AppConstants.animationConfigurationDuration,
                    child: SlideAnimation(
                      horizontalOffset: 200.w,
                      child: FadeInAnimation(
                        child: AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 16.h),
                            child: DiseaseItem(
                              // diseaseData: state.data[index].diseases[index],
                              diseaseType: state.data[index].diseaseType,
                              diseaseTypeImage:
                                  state.data[index].diseaseTypeImage,
                              onPressed: () => context.pushRoute(
                                MedicalInfoCategoryDiseasesRoute(
                                  categoryName: state.data[index].diseaseType,
                                  diseases: state.data[index].diseases,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
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
