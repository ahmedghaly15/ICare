// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseDetails _$DiseaseDetailsFromJson(Map<String, dynamic> json) =>
    DiseaseDetails(
      symptomsKeys: (json['Symptoms_Keys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      symptoms: Symptoms.fromJson(json['Symptoms'] as Map<String, dynamic>),
      redFlagsKeys: (json['Red_Flags_Keys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      redFlags: RedFlags.fromJson(json['Red_Flags'] as Map<String, dynamic>),
      initialManagementKeys: (json['Initial_Management_Keys'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      initialManagement: InitialManagement.fromJson(
          json['Initial_Management'] as Map<String, dynamic>),
      doOrNot: DoOrNot.fromJson(json['Do_Or_Not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiseaseDetailsToJson(DiseaseDetails instance) =>
    <String, dynamic>{
      'Symptoms_Keys': instance.symptomsKeys,
      'Symptoms': instance.symptoms.toJson(),
      'Red_Flags_Keys': instance.redFlagsKeys,
      'Red_Flags': instance.redFlags.toJson(),
      'Initial_Management_Keys': instance.initialManagementKeys,
      'Initial_Management': instance.initialManagement.toJson(),
      'Do_Or_Not': instance.doOrNot.toJson(),
    };
