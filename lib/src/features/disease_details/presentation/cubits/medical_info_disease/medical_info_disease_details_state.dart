import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

part 'medical_info_disease_details_state.freezed.dart';

@freezed
class MedicalInfoDiseaseDetailsState<T>
    with _$MedicalInfoDiseaseDetailsState<T> {
  const factory MedicalInfoDiseaseDetailsState.initial() =
      _MedicalInfoDiseaseDetailsStateInitial;
  const factory MedicalInfoDiseaseDetailsState.getMedicalInfoDiseaseDetailsLoading() =
      GetMedicalInfoDiseaseDetailsLoading;
  const factory MedicalInfoDiseaseDetailsState.getMedicalInfoDiseaseDetailsSuccess(
      DiseaseDetails data) = GetMedicalInfoDiseaseDetailsSuccess<T>;

  const factory MedicalInfoDiseaseDetailsState.getMedicalInfoDiseaseDetailsError(
      String error) = GetMedicalInfoDiseaseDetailsError;
}
