import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/widgets/custom_circular_progress_indicator.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_cubit.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_state.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_tabs.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_image.dart';

@RoutePage()
class EmergencyDiseaseDetailsView extends StatelessWidget
    implements AutoRouteWrapper {
  const EmergencyDiseaseDetailsView({
    super.key,
    required this.diseaseData,
  });

  final DiseaseData diseaseData;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<EmergencyDiseaseDetailsCubit>(
      create: (_) => getIt.get<EmergencyDiseaseDetailsCubit>()
        ..getEmergencyDiseaseDetails(diseaseData.id),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DiseaseImage(
              diseaseData: diseaseData,
            ),
            MySizedBox.height12,
            BlocBuilder<EmergencyDiseaseDetailsCubit,
                EmergencyDiseaseDetailsState>(
              builder: (context, state) {
                if (state is GetEmergencyDiseaseDetailsError) {
                  return Text('ERROR: ${state.error}');
                } else if (state is GetEmergencyDiseaseDetailsSuccess) {
                  return CustomDiseaseDetailsTabs(diseaseDetails: state.data);
                } else {
                  return const Center(
                    child: CustomCircularProgressIndicator(),
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
