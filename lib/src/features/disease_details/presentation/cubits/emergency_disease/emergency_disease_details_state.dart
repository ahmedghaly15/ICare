import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

part 'emergency_disease_details_state.freezed.dart';

@freezed
class EmergencyDiseaseDetailsState<T> with _$EmergencyDiseaseDetailsState<T> {
  const factory EmergencyDiseaseDetailsState.initial() =
      _EmergencyDiseaseDetailsStateInitial;
  const factory EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsLoading() =
      GetEmergencyDiseaseDetailsLoading;
  const factory EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsSuccess(
      DiseaseDetails data) = GetEmergencyDiseaseDetailsSuccess<T>;

  const factory EmergencyDiseaseDetailsState.getEmergencyDiseaseDetailsError(
      String error) = GetEmergencyDiseaseDetailsError;
}
