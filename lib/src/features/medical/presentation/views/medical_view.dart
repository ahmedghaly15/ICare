import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_cubit.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_state.dart';
import 'package:icare/src/features/medical/presentation/widgets/medical_categories_list_view.dart';

@RoutePage()
class MedicalView extends StatelessWidget {
  const MedicalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicalCubit, MedicalState>(
      buildWhen: (_, state) =>
          state is GetMedicalSuccess ||
          state is GetMedicalLoading ||
          state is GetMedicalError,
      builder: (context, state) {
        if (state is GetMedicalError) {
          return Center(child: Text('ERROR: ${state.error}'));
        } else if (state is GetMedicalSuccess) {
          return MedicalCategoriesListView(medicalCategories: state.data);
        } else {
          return const Center(child: CustomCircularProgressIndicator());
        }
      },
    );
  }
}
