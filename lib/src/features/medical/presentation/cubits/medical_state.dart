import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/medical/data/models/get_medical_info_response.dart';

part 'medical_state.freezed.dart';

@freezed
class MedicalState<T> with _$MedicalState<T> {
  const factory MedicalState.initial() = _Initial;
  const factory MedicalState.getEmergencyDiseasesLoading() =
      GetEmergencyDiseasesLoading;
  const factory MedicalState.getEmergencyDiseasesSuccess(
      List<DiseaseData> data) = GetEmergencyDiseasesSuccess<T>;
  const factory MedicalState.getEmergencyDiseasesError(String error) =
      GetEmergencyDiseasesError<T>;
  const factory MedicalState.getMedicalInfoLoading() = GetMedicalInfoLoading;
  const factory MedicalState.getMedicalInfoSuccess(
      List<GetMedicalInfoResponse> data) = GetMedicalInfoSuccess<T>;
  const factory MedicalState.getMedicalInfoError(String error) =
      GetMedicalInfoError<T>;
}
