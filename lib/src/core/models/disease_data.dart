import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/utils/app_strings.dart';

part 'disease_data.freezed.dart';
part 'disease_data.g.dart';

@freezed
class DiseaseData with _$DiseaseData {
  const factory DiseaseData({
    @JsonKey(name: AppStrings.diseaseName) required String diseaseName,
    @JsonKey(name: AppStrings.diseaseImage) required String diseaseImage,
    @JsonKey(name: AppStrings.responseItemId) required String id,
  }) = _DiseaseData;

  factory DiseaseData.fromJson(Map<String, dynamic> json) =>
      _$DiseaseDataFromJson(json);
}
