import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_cubit.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_state.dart';
import 'package:icare/src/features/medical_info/presentation/widgets/medical_info_categories_loading_sliver_list.dart';
import 'package:icare/src/features/medical_info/presentation/widgets/medical_info_categories_sliver_list.dart';

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
            child: CustomErrorWidget(
              error: state.error,
              tryAgainOnPressed: () =>
                  context.read<MedicalInfoCubit>().getMedicalInfo(),
            ),
          );
        } else if (state is GetMedicalInfoSuccess) {
          return SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            sliver: MedicalInfoCategoriesSliverList(categories: state.data),
          );
        } else {
          return SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            sliver: const MedicalInfoCategoriesLoadingSliverList(),
          );
        }
      },
    );
  }
}
