import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/medical/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_state.dart';

class EmergencyCubit extends Cubit<MedicalState> {
  final GetEmergencyDiseasesUseCase _getEmergencyDiseasesUseCase;

  EmergencyCubit(
    this._getEmergencyDiseasesUseCase,
  ) : super(const MedicalState.initial());

  void getEmergencyDiseases() async {
    emit(const MedicalState.getEmergencyDiseasesLoading());
    final result = await _getEmergencyDiseasesUseCase(const NoParams());
    result.when(
      success: (data) => emit(MedicalState.getEmergencyDiseasesSuccess(data)),
      error: (error) => emit(
        MedicalState.getEmergencyDiseasesError(error.apiErrorModel.error ?? ''),
      ),
    );
  }
}
