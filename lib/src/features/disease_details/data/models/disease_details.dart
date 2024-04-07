import 'package:json_annotation/json_annotation.dart';

import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/disease_details/data/models/do_or_not.dart';
import 'package:icare/src/features/disease_details/data/models/initial_management.dart';
import 'package:icare/src/features/disease_details/data/models/red_flags.dart';
import 'package:icare/src/features/disease_details/data/models/symptoms.dart';

part 'disease_details.g.dart';

@JsonSerializable()
class DiseaseDetails {
  @JsonKey(name: AppStrings.symptomsKeys)
  final List<String> symptomsKeys;
  @JsonKey(name: AppStrings.symptoms)
  final Symptoms symptoms;
  @JsonKey(name: AppStrings.redFlagsKeys)
  final List<String> redFlagsKeys;
  @JsonKey(name: AppStrings.redFlags)
  final RedFlags redFlags;
  @JsonKey(name: AppStrings.initialManagementKeys)
  final List<String> initialManagementKeys;
  @JsonKey(name: AppStrings.initialManagement)
  final InitialManagement initialManagement;
  @JsonKey(name: AppStrings.doOrNot)
  final DoOrNot doOrNot;

  const DiseaseDetails({
    required this.symptomsKeys,
    required this.symptoms,
    required this.redFlagsKeys,
    required this.redFlags,
    required this.initialManagementKeys,
    required this.initialManagement,
    required this.doOrNot,
  });

  factory DiseaseDetails.fromJson(Map<String, dynamic> json) =>
      _$DiseaseDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseDetailsToJson(this);
}
