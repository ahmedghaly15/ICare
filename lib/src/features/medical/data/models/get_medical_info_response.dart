import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_strings.dart';

part 'get_medical_info_response.g.dart';
part 'get_medical_info_response.freezed.dart';

@freezed
class GetMedicalInfoResponse with _$GetMedicalInfoResponse {
  const factory GetMedicalInfoResponse({
    @JsonKey(name: AppStrings.diseaseType) required String diseaseType,
    @JsonKey(name: AppStrings.diseaseTypeImage)
    required String diseaseTypeImage,
    required List<DiseaseData> diseases,
  }) = _GetMedicalInfoResponse;

  factory GetMedicalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalInfoResponseFromJson(json);
}
