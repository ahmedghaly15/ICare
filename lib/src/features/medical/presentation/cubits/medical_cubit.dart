import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/medical/domain/usecases/get_medical.dart';
import 'package:icare/src/features/medical/presentation/cubits/medical_state.dart';

class MedicalCubit extends Cubit<MedicalState> {
  final GetMedicalUseCase _getMedicalUseCase;

  MedicalCubit(this._getMedicalUseCase) : super(const MedicalState.initial());

  void getMedical() async {
    emit(const MedicalState.getMedicalLoading());

    final result = await _getMedicalUseCase(const NoParams());

    result.when(
      success: (data) => emit(MedicalState.getMedicalSuccess(data)),
      error: (error) => emit(
        MedicalState.getMedicalError(
            error.apiErrorModel.error ?? AppStrings.unKnownError),
      ),
    );
  }
}
