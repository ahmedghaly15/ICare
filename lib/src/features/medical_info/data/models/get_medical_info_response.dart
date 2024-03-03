import 'package:icare/src/core/models/disease_data.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_medical_info_response.g.dart';

@JsonSerializable()
class GetMedicalInfoResponse {
  @JsonKey(name: AppStrings.diseaseType)
  final String diseaseType;
  @JsonKey(name: AppStrings.diseaseTypeImage)
  final String diseaseTypeImage;
  final List<DiseaseData> diseases;

  const GetMedicalInfoResponse({
    required this.diseaseType,
    required this.diseaseTypeImage,
    required this.diseases,
  });

  factory GetMedicalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMedicalInfoResponseToJson(this);
}
