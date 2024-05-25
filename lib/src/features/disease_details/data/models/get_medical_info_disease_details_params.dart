import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_medical_info_disease_details_params.freezed.dart';

@freezed
class GetMedicalInfoDiseaseDetailsParams
    with _$GetMedicalInfoDiseaseDetailsParams {
  const factory GetMedicalInfoDiseaseDetailsParams({
    required String diseaseId,
    required String diseaseType,
  }) = _GetMedicalInfoDiseaseDetailsParams;
}
