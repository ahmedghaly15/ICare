import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/medical/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical_info.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_state.dart';

class MedicalCubit extends Cubit<MedicalState> {
  final GetMedicalUseCase getMedicalUseCase;
  final GetEmergencyDiseasesUseCase getEmergencyDiseasesUseCase;
  final GetMedicalInfoUseCase getMedicalInfoUseCase;

  MedicalCubit({
    required this.getMedicalUseCase,
    required this.getEmergencyDiseasesUseCase,
    required this.getMedicalInfoUseCase,
  }) : super(const MedicalState.initial());

  void getMedical() async {
    emit(const MedicalState.getMedicalLoading());

    final result = await getMedicalUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalState.getMedicalSuccess(data)),
      error: (error) =>
          emit(MedicalState.getMedicalError(error.apiErrorModel.error ?? '')),
    );
  }

  Future<void> getEmergencyDiseases() async {
    emit(const MedicalState.getEmergencyDiseasesLoading());

    final result = await getEmergencyDiseasesUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalState.getEmergencyDiseasesSuccess(data)),
      error: (error) => emit(MedicalState.getEmergencyDiseasesError(
          error.apiErrorModel.error ?? '')),
    );
  }

  void getMedicalInfo() async {
    emit(const MedicalState.getMedicalInfoLoading());

    final result = await getMedicalInfoUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalState.getMedicalInfoSuccess(data)),
      error: (error) => emit(
          MedicalState.getMedicalInfoError(error.apiErrorModel.error ?? '')),
    );
  }
}
