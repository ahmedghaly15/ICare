import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/widgets/custom_error_widget.dart';
import 'package:icare/src/core/widgets/my_sized_box.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/current_tap/current_tap_cubit.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_cubit.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_state.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/custom_disease_details_tabs_builder.dart';
import 'package:icare/src/features/disease_details/presentation/widgets/disease_details_loading_view.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<EmergencyDiseaseDetailsCubit>(
          create: (context) => getIt.get<EmergencyDiseaseDetailsCubit>()
            ..getEmergencyDiseaseDetails(diseaseData.id),
        ),
        BlocProvider<CurrentTapCubit>(
          create: (context) => getIt.get<CurrentTapCubit>(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<EmergencyDiseaseDetailsCubit,
            EmergencyDiseaseDetailsState>(
          builder: (context, state) {
            if (state is GetEmergencyDiseaseDetailsError) {
              return CustomErrorWidget(
                error: state.error,
                tryAgainOnPressed: () => context
                    .read<EmergencyDiseaseDetailsCubit>()
                    .getEmergencyDiseaseDetails(diseaseData.id),
              );
            } else if (state is GetEmergencyDiseaseDetailsSuccess) {
              return Column(
                children: <Widget>[
                  DiseaseImage(diseaseData: diseaseData),
                  MySizedBox.height18,
                  CustomDiseaseDetailsTabsBlocBuilder(
                      diseaseDetails: state.data),
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
