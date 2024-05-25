// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseDetailsImpl _$$DiseaseDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DiseaseDetailsImpl(
      symptoms: json['Symptoms'] as List<dynamic>,
      redFlags: json['Red_Flags'] as List<dynamic>,
      initialManagement: json['Initial_Management'] as List<dynamic>,
      doOrNot: DoOrNot.fromJson(json['Do_Or_Not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DiseaseDetailsImplToJson(
        _$DiseaseDetailsImpl instance) =>
    <String, dynamic>{
      'Symptoms': instance.symptoms,
      'Red_Flags': instance.redFlags,
      'Initial_Management': instance.initialManagement,
      'Do_Or_Not': instance.doOrNot.toJson(),
    };

_$DoOrNotImpl _$$DoOrNotImplFromJson(Map<String, dynamic> json) =>
    _$DoOrNotImpl(
      dO: json['Do'] as List<dynamic>,
      doNot: json['Do Not'] as List<dynamic>,
    );

Map<String, dynamic> _$$DoOrNotImplToJson(_$DoOrNotImpl instance) =>
    <String, dynamic>{
      'Do': instance.dO,
      'Do Not': instance.doNot,
    };
