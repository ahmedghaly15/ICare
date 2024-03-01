import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_medical_info_response.g.dart';

@JsonSerializable()
class GetMedicalInfoResponse {
  @JsonKey(name: AppStrings.diseaseType)
  final String diseaseType;
  @JsonKey(name: AppStrings.diseaseTypeImage)
  final String diseaseTypeImage;

  const GetMedicalInfoResponse({
    required this.diseaseType,
    required this.diseaseTypeImage,
  });

  factory GetMedicalInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMedicalInfoResponseToJson(this);
}
