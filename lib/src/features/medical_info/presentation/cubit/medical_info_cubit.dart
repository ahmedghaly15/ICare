import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/medical_info/domain/usecases/get_medical_info.dart';
import 'package:icare/src/features/medical_info/presentation/cubit/medical_info_state.dart';

class MedicalInfoCubit extends Cubit<MedicalInfoState> {
  final GetMedicalInfoUseCase _getMedicalInfoUseCase;

  MedicalInfoCubit(
    this._getMedicalInfoUseCase,
  ) : super(const MedicalInfoState.initial());

  void getMedicalInfo() async {
    emit(const MedicalInfoState.getMedicalInfoLoading());

    final result = await _getMedicalInfoUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalInfoState.getMedicalInfoSuccess(data)),
      error: (error) => emit(MedicalInfoState.getMedicalInfoError(
          error.apiErrorModel.error ?? '')),
    );
  }
}
