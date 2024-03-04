import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/disease_details/domain/usecases/get_emergency_disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/emergency_disease/emergency_disease_details_state.dart';

class EmergencyDiseaseDetailsCubit extends Cubit<EmergencyDiseaseDetailsState> {
  final GetEmergencyDiseaseDetailsUseCase _getEmergencyDiseaseDetailsUseCase;

  EmergencyDiseaseDetailsCubit(
    this._getEmergencyDiseaseDetailsUseCase,
  ) : super(const EmergencyDiseaseDetailsState.initial());

  Future<void> getEmergencyDiseaseDetails(String diseaseId) async {
    emit(
        const EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsLoading());

    final result = await _getEmergencyDiseaseDetailsUseCase(diseaseId);

    result.when(
      success: (data) => emit(
          EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsSuccess(data)),
      error: (error) => emit(
        EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsError(
            error.apiErrorModel.error ?? ''),
      ),
    );
  }
}
