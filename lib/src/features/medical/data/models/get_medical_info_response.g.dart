// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_medical_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMedicalInfoResponse _$GetMedicalInfoResponseFromJson(
        Map<String, dynamic> json) =>
    GetMedicalInfoResponse(
      diseaseType: json['disease_type'] as String,
      diseaseTypeImage: json['disease_type_image'] as String,
    );

Map<String, dynamic> _$GetMedicalInfoResponseToJson(
        GetMedicalInfoResponse instance) =>
    <String, dynamic>{
      'disease_type': instance.diseaseType,
      'disease_type_image': instance.diseaseTypeImage,
    };
