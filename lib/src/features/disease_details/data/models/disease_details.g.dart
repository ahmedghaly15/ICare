// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseDetails _$DiseaseDetailsFromJson(Map<String, dynamic> json) =>
    DiseaseDetails(
      symptoms: json['Symptoms'] as List<dynamic>,
      redFlags: json['Red_Flags'] as List<dynamic>,
      initialManagement: json['Initial_Management'] as List<dynamic>,
      doOrNot: DoOrNot.fromJson(json['Do_Or_Not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiseaseDetailsToJson(DiseaseDetails instance) =>
    <String, dynamic>{
      'Symptoms': instance.symptoms,
      'Red_Flags': instance.redFlags,
      'Initial_Management': instance.initialManagement,
      'Do_Or_Not': instance.doOrNot,
    };

DoOrNot _$DoOrNotFromJson(Map<String, dynamic> json) => DoOrNot(
      dO: json['Do'] as List<dynamic>,
      doNot: json['Do Not'] as List<dynamic>,
    );

Map<String, dynamic> _$DoOrNotToJson(DoOrNot instance) => <String, dynamic>{
      'Do': instance.dO,
      'Do Not': instance.doNot,
    };
