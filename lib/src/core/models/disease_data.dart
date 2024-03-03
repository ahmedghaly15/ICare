import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disease_data.g.dart';

@JsonSerializable()
class DiseaseData {
  @JsonKey(name: AppStrings.diseaseName)
  final String diseaseName;
  @JsonKey(name: AppStrings.diseaseImage)
  final String diseaseImage;

  const DiseaseData({
    required this.diseaseName,
    required this.diseaseImage,
  });

  factory DiseaseData.fromJson(Map<String, dynamic> json) =>
      _$DiseaseDataFromJson(json);

  Map<String, dynamic> toJson() => _$DiseaseDataToJson(this);
}
