import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_emergency_diseases_response.g.dart';

@JsonSerializable()
class GetEmergencyDiseasesResponse {
  @JsonKey(name: AppStrings.diseaseName)
  final String diseaseName;
  @JsonKey(name: AppStrings.diseaseImage)
  final String diseaseImage;

  const GetEmergencyDiseasesResponse({
    required this.diseaseName,
    required this.diseaseImage,
  });

  factory GetEmergencyDiseasesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetEmergencyDiseasesResponseFromJson(json);
}
