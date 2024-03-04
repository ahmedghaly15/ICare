import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/medical_info_disease/medical_info_disease_details_cubit.dart';

@RoutePage()
class MedicalInfoDiseaseDetailsView extends StatelessWidget
    implements AutoRouteWrapper {
  const MedicalInfoDiseaseDetailsView({
    super.key,
    required this.diseaseData,
    required this.diseaseType,
  });

  final DiseaseData diseaseData;
  final String diseaseType;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<MedicalInfoDiseaseDetailsCubit>()
        ..getMedicalInfoDiseaseDetails(
          params: GetMedicalInfoDiseaseDetailsParams(
            diseaseId: diseaseData.id,
            diseaseType: diseaseType,
          ),
        ),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
