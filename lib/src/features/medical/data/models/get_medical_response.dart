import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_medical_response.g.dart';

@JsonSerializable()
class GetMedicalResponse {
  @JsonKey(name: AppStrings.medicalCategoryName)
  final String medicalCategoryName;
  @JsonKey(name: AppStrings.medicalCategoryImage)
  final String medicalCategoryImage;

  const GetMedicalResponse({
    required this.medicalCategoryName,
    required this.medicalCategoryImage,
  });

  factory GetMedicalResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalResponseDataFromJson(json);
}
