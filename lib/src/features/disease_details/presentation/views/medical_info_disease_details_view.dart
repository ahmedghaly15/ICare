import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/medical_info_disease/medical_info_disease_details_cubit.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/medical_info_disease/medical_info_disease_details_state.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_tabs.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_details_loading_view.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_image.dart';

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
    return BlocProvider<MedicalInfoDiseaseDetailsCubit>(
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
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<MedicalInfoDiseaseDetailsCubit,
            MedicalInfoDiseaseDetailsState>(
          builder: (_, state) {
            if (state is GetMedicalInfoDiseaseDetailsError) {
              return CustomErrorWidget(
                error: state.error,
                tryAgainOnPressed: () => context
                    .read<MedicalInfoDiseaseDetailsCubit>()
                    .getMedicalInfoDiseaseDetails(
                      params: GetMedicalInfoDiseaseDetailsParams(
                        diseaseId: diseaseData.id,
                        diseaseType: diseaseType,
                      ),
                    ),
              );
            } else if (state is GetMedicalInfoDiseaseDetailsSuccess) {
              return Column(
                children: <Widget>[
                  DiseaseImage(diseaseData: diseaseData),
                  MySizedBox.height18,
                  CustomDiseaseDetailsTabs(diseaseDetails: state.data),
                ],
              );
            } else {
              return const DiseaseDetailsLoadingView();
            }
          },
        ),
      ),
    );
  }
}
