import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disease_details.g.dart';

@JsonSerializable()
class DiseaseDetails {
  @JsonKey(name: AppStrings.symptoms)
  final List<dynamic> symptoms;
  @JsonKey(name: AppStrings.redFlags)
  final List<dynamic> redFlags;
  @JsonKey(name: AppStrings.initialManagement)
  final List<dynamic> initialManagement;
  @JsonKey(name: AppStrings.doOrNot)
  final DoOrNot doOrNot;

  const DiseaseDetails({
    required this.symptoms,
    required this.redFlags,
    required this.initialManagement,
    required this.doOrNot,
  });

  factory DiseaseDetails.fromJson(Map<String, dynamic> json) =>
      _$DiseaseDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DiseaseDetailsToJson(this);
}

@JsonSerializable()
class DoOrNot {
  @JsonKey(name: AppStrings.dO)
  final List<dynamic> dO;
  @JsonKey(name: AppStrings.dont)
  final List<dynamic> doNot;

  const DoOrNot({
    required this.dO,
    required this.doNot,
  });

  factory DoOrNot.fromJson(Map<String, dynamic> json) =>
      _$DoOrNotFromJson(json);

  Map<String, dynamic> toJson() => _$DoOrNotToJson(this);
}
