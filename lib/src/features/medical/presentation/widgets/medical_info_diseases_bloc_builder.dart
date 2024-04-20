import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_constants.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/shimmer_widget.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_info_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_state.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_info_categories_carousel_slider.dart';

class MedicalInfoDiseasesBlocBuilder extends StatelessWidget {
  const MedicalInfoDiseasesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicalInfoCubit, MedicalState>(
      buildWhen: (_, state) =>
          state is GetMedicalInfoSuccess ||
          state is GetMedicalInfoError ||
          state is GetMedicalInfoLoading,
      builder: (context, state) {
        if (state is GetMedicalInfoError) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<MedicalInfoCubit>().getMedicalInfo(),
            ),
          );
        } else if (state is GetMedicalInfoSuccess) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: MedicalInfoCategoriesCarouselSlider(categories: state.data),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: CarouselSlider.builder(
              itemBuilder: (_, __, ___) => const ShimmerWidget(),
              itemCount: 10,
              options: AppConstants.medicalInfoCarouselOptions,
            ),
          );
        }
      },
    );
  }
}
