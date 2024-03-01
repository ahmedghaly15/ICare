import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/medical_info/data/models/get_medical_info_response.dart';

part 'medical_info_state.freezed.dart';

@freezed
class MedicalInfoState<T> with _$MedicalInfoState<T> {
  const factory MedicalInfoState.initial() = _MedicalInfoInitial;
  const factory MedicalInfoState.getMedicalInfoLoading() =
      GetMedicalInfoLoading;
  const factory MedicalInfoState.getMedicalInfoSuccess(
      List<GetMedicalInfoResponse> data) = GetMedicalInfoSuccess<T>;
  const factory MedicalInfoState.getMedicalInfoError(String error) =
      GetMedicalInfoError;
}
