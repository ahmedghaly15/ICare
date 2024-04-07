import 'package:json_annotation/json_annotation.dart';

part 'initial_management.g.dart';

@JsonSerializable()
class InitialManagement {
  @JsonKey(name: 'Assessment and Triage')
  final String assessmentAndTriage;
  @JsonKey(name: 'Prophylaxis and Treatment')
  final String prophylaxisAndTreatment;
  @JsonKey(name: 'Oral Rehydration')
  final String oralRehydration;
  @JsonKey(name: 'Nasogastric Tube Placement (if necessary)')
  final String nasogastricTubePlacementIfNecessary;
  @JsonKey(name: 'Antiemetic Medications')
  final String antiemeticMedications;
  @JsonKey(name: 'Monitoring for Dehydration')
  final String monitoringForDehydration;
  @JsonKey(name: 'IV Fluids (if necessary)')
  final String ivFluidsIfNecessary;
  @JsonKey(name: 'Treatment of Underlying Cause')
  final String treatmentOfUnderlyingCause;
  @JsonKey(name: 'Isolation Precautions (if necessary)')
  final String isolationPrecautionsIfInfectious;
  @JsonKey(name: 'Parental and Child Comfort')
  final String parentalAndChildComfort;
  @JsonKey(name: 'Consultation and Follow-up')
  final String consultationAndFollowUp;

  const InitialManagement({
    required this.assessmentAndTriage,
    required this.prophylaxisAndTreatment,
    required this.oralRehydration,
    required this.nasogastricTubePlacementIfNecessary,
    required this.antiemeticMedications,
    required this.monitoringForDehydration,
    required this.ivFluidsIfNecessary,
    required this.treatmentOfUnderlyingCause,
    required this.isolationPrecautionsIfInfectious,
    required this.parentalAndChildComfort,
    required this.consultationAndFollowUp,
  });

  factory InitialManagement.fromJson(Map<String, dynamic> json) =>
      _$InitialManagementFromJson(json);
  Map<String, dynamic> toJson() => _$InitialManagementToJson(this);
}
