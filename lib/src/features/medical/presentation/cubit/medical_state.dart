import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/medical/data/models/get_emergency_diseases_response.dart';
import 'package:icare/src/features/medical/data/models/get_medical_response.dart';

part 'medical_state.freezed.dart';

@freezed
class MedicalState<T> with _$MedicalState<T> {
  const factory MedicalState.initial() = _MedicalInitial;
  const factory MedicalState.getMedicalLoading() = GetMedicalLoading;
  const factory MedicalState.getMedicalSuccess(List<GetMedicalResponse> data) =
      GetMedicalSuccess<T>;
  const factory MedicalState.getMedicalError(String error) = GetMedicalError;

  const factory MedicalState.getEmergencyDiseasesLoading() =
      GetEmergencyDiseasesLoading;
  const factory MedicalState.getEmergencyDiseasesSuccess(
      List<GetEmergencyDiseasesResponse> data) = GetEmergencyDiseasesSuccess<T>;
  const factory MedicalState.getEmergencyDiseasesError(String error) =
      GetEmergencyDiseasesError;
}
