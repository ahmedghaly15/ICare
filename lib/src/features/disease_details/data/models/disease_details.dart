import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/utils/app_strings.dart';

part 'disease_details.g.dart';
part 'disease_details.freezed.dart';

@freezed
class DiseaseDetails with _$DiseaseDetails {
  const factory DiseaseDetails({
    @JsonKey(name: AppStrings.symptoms) required List<dynamic> symptoms,
    @JsonKey(name: AppStrings.redFlags) required List<dynamic> redFlags,
    @JsonKey(name: AppStrings.initialManagement)
    required List<dynamic> initialManagement,
    @JsonKey(name: AppStrings.doOrNot) required DoOrNot doOrNot,
  }) = _DiseaseDetails;

  factory DiseaseDetails.fromJson(Map<String, dynamic> json) =>
      _$DiseaseDetailsFromJson(json);
}

@freezed
class DoOrNot with _$DoOrNot {
  const factory DoOrNot({
    @JsonKey(name: AppStrings.dO) required List<dynamic> dO,
    @JsonKey(name: AppStrings.dont) required List<dynamic> doNot,
  }) = _DoOrNot;

  factory DoOrNot.fromJson(Map<String, dynamic> json) =>
      _$DoOrNotFromJson(json);
}
