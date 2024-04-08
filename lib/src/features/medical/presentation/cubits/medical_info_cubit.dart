import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical_info.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_state.dart';

class MedicalInfoCubit extends Cubit<MedicalState> {
  final GetMedicalInfoUseCase _getMedicalInfoUseCase;

  MedicalInfoCubit(
    this._getMedicalInfoUseCase,
  ) : super(const MedicalState.initial());

  void getMedicalInfo() async {
    emit(const MedicalState.getMedicalInfoLoading());
    final result = await _getMedicalInfoUseCase(const NoParams());
    result.when(
      success: (data) => emit(MedicalState.getMedicalInfoSuccess(data)),
      error: (error) => emit(
        MedicalState.getMedicalInfoError(error.apiErrorModel.error ?? ''),
      ),
    );
  }
}
