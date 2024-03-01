// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_emergency_diseases_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEmergencyDiseasesResponse _$GetEmergencyDiseasesResponseFromJson(
        Map<String, dynamic> json) =>
    GetEmergencyDiseasesResponse(
      diseaseName: json['disease_name'] as String,
      diseaseImage: json['disease_image'] as String,
    );

Map<String, dynamic> _$GetEmergencyDiseasesResponseToJson(
        GetEmergencyDiseasesResponse instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'disease_image': instance.diseaseImage,
    };
