import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/medical/domain/usecases/get_emergency_diseases.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical.dart';
import 'package:icare/src/features/medical/presentation/cubit/medical_state.dart';

class MedicalCubit extends Cubit<MedicalState> {
  final GetMedicalUseCase getMedicalUseCase;
  final GetEmergencyDiseasesUseCase getEmergencyDiseasesUseCase;

  MedicalCubit({
    required this.getMedicalUseCase,
    required this.getEmergencyDiseasesUseCase,
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

  void getEmergencyDiseases() async {
    emit(const MedicalState.getEmergencyDiseasesLoading());

    final result = await getEmergencyDiseasesUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalState.getEmergencyDiseasesSuccess(data)),
      error: (error) => emit(MedicalState.getEmergencyDiseasesError(
          error.apiErrorModel.error ?? '')),
    );
  }
}
