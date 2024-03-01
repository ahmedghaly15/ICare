import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/emergency/data/models/get_emergency_diseases_response.dart';

part 'emergency_state.freezed.dart';

@freezed
class EmergencyState<T> with _$EmergencyState<T> {
  const factory EmergencyState.initial() = _EmergencyInitial;

  const factory EmergencyState.getEmergencyDiseasesLoading() =
      GetEmergencyDiseasesLoading;
  const factory EmergencyState.getEmergencyDiseasesSuccess(
      List<GetEmergencyDiseasesResponse> data) = GetEmergencyDiseasesSuccess<T>;
  const factory EmergencyState.getEmergencyDiseasesError(String error) =
      GetEmergencyDiseasesError;
}
