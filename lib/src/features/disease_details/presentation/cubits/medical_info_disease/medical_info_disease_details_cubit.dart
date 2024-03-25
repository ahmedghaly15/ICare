import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/disease_details/data/models/get_medical_info_disease_details_params.dart';
import 'package:icare/src/features/disease_details/domain/usecases/get_medical_info_disease_details.dart';
import 'package:icare/src/features/disease_details/presentation/cubits/medical_info_disease/medical_info_disease_details_state.dart';

class MedicalInfoDiseaseDetailsCubit
    extends Cubit<MedicalInfoDiseaseDetailsState> {
  final GetMedicalInfoDiseaseDetailsUseCase
      _getMedicalInfoDiseaseDetailsUseCase;

  MedicalInfoDiseaseDetailsCubit(
    this._getMedicalInfoDiseaseDetailsUseCase,
  ) : super(const MedicalInfoDiseaseDetailsState.initial());

  void getMedicalInfoDiseaseDetails({
    required GetMedicalInfoDiseaseDetailsParams params,
  }) async {
    emit(const MedicalInfoDiseaseDetailsState
        .getMedicalInfoDiseaseDetailsLoading());

    final result = await _getMedicalInfoDiseaseDetailsUseCase(params);

    result.when(
      success: (data) => emit(
        MedicalInfoDiseaseDetailsState.getMedicalInfoDiseaseDetailsSuccess(
          data,
        ),
      ),
      error: (error) => emit(
        MedicalInfoDiseaseDetailsState.getMedicalInfoDiseaseDetailsError(
          error.apiErrorModel.error ?? '',
        ),
      ),
    );
  }
}
