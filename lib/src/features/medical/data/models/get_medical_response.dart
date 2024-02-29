import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_medical_response.g.dart';

@JsonSerializable()
class GetMedicalResponse {
  @JsonKey(name: AppStrings.medicalCategoryName)
  final String medicalCategoryName;
  @JsonKey(name: AppStrings.medicalCategoryImage)
  final String medicalCategoryImage;
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
  final String diseaseName;
  @JsonKey(name: AppStrings.diseaseImage)
  final String diseaseImage;

  const GetMedicalResponseData({
    required this.diseaseName,
    required this.diseaseImage,
  });

  factory GetMedicalResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalResponseDataFromJson(json);
}
