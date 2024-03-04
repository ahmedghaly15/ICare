import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/features/disease_details/data/models/disease_details.dart';

part 'emergency_state.freezed.dart';

@freezed
class EmergencyState<T> with _$EmergencyState<T> {
  const factory EmergencyState.initial() = _EmergencyInitial;

  const factory EmergencyState.getEmergencyDiseasesLoading() =
      GetEmergencyDiseasesLoading;
  const factory EmergencyState.getEmergencyDiseasesSuccess(
      List<DiseaseData> data) = GetEmergencyDiseasesSuccess<T>;
  const factory EmergencyState.getEmergencyDiseasesError(String error) =
      GetEmergencyDiseasesError;
}
