import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_medical_response.g.dart';

@JsonSerializable()
class GetMedicalResponse {
  @JsonKey(name: AppStrings.medicalCategoryName)
  final String medicalCategoryName;
  @JsonKey(name: AppStrings.medicalCategoryImage)
  final String medicalCategoryImage;
  @JsonKey(name: AppStrings.data)
  final List<GetMedicalResponseData> data;

  const GetMedicalResponse({
    required this.medicalCategoryName,
    required this.medicalCategoryImage,
    required this.data,
  });

  factory GetMedicalResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalResponseFromJson(json);
}

@JsonSerializable()
class GetMedicalResponseData {
  @JsonKey(name: AppStrings.diseaseName)
  final String? diseaseName;
  @JsonKey(name: AppStrings.diseaseImage)
  final String? diseaseImage;
  @JsonKey(name: AppStrings.diseaseType)
  final String? diseaseType;
  @JsonKey(name: AppStrings.diseaseTypeImage)
  final String? diseaseTypeImage;

  const GetMedicalResponseData({
    this.diseaseName,
    this.diseaseImage,
    this.diseaseType,
    this.diseaseTypeImage,
  });

  factory GetMedicalResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalResponseDataFromJson(json);
}
