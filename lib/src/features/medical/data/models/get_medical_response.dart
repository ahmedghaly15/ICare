import 'package:json_annotation/json_annotation.dart';

part 'get_medical_response.g.dart';

@JsonSerializable()
class GetMedicalResponse {
  @JsonKey(name: 'medical_category_name')
  final String medicalCategoryName;
  @JsonKey(name: 'medical_category_image')
  final String medicalCategoryImage;

  const GetMedicalResponse({
    required this.medicalCategoryName,
    required this.medicalCategoryImage,
  });

  factory GetMedicalResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMedicalResponseFromJson(json);
}
