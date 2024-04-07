// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_management.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialManagement _$InitialManagementFromJson(Map<String, dynamic> json) =>
    InitialManagement(
      assessmentAndTriage: json['Assessment and Triage'] as String,
      prophylaxisAndTreatment: json['Prophylaxis and Treatment'] as String,
      oralRehydration: json['Oral Rehydration'] as String,
      nasogastricTubePlacementIfNecessary:
          json['Nasogastric Tube Placement (if necessary)'] as String,
      antiemeticMedications: json['Antiemetic Medications'] as String,
      monitoringForDehydration: json['Monitoring for Dehydration'] as String,
      ivFluidsIfNecessary: json['IV Fluids (if necessary)'] as String,
      treatmentOfUnderlyingCause:
          json['Treatment of Underlying Cause'] as String,
      isolationPrecautionsIfInfectious:
          json['Isolation Precautions (if necessary)'] as String,
      parentalAndChildComfort: json['Parental and Child Comfort'] as String,
      consultationAndFollowUp: json['Consultation and Follow-up'] as String,
    );

Map<String, dynamic> _$InitialManagementToJson(InitialManagement instance) =>
    <String, dynamic>{
      'Assessment and Triage': instance.assessmentAndTriage,
      'Prophylaxis and Treatment': instance.prophylaxisAndTreatment,
      'Oral Rehydration': instance.oralRehydration,
      'Nasogastric Tube Placement (if necessary)':
          instance.nasogastricTubePlacementIfNecessary,
      'Antiemetic Medications': instance.antiemeticMedications,
      'Monitoring for Dehydration': instance.monitoringForDehydration,
      'IV Fluids (if necessary)': instance.ivFluidsIfNecessary,
      'Treatment of Underlying Cause': instance.treatmentOfUnderlyingCause,
      'Isolation Precautions (if necessary)':
          instance.isolationPrecautionsIfInfectious,
      'Parental and Child Comfort': instance.parentalAndChildComfort,
      'Consultation and Follow-up': instance.consultationAndFollowUp,
    };
