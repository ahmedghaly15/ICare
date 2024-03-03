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
      diseases: (json['diseases'] as List<dynamic>)
          .map((e) => DiseaseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMedicalInfoResponseToJson(
        GetMedicalInfoResponse instance) =>
    <String, dynamic>{
      'disease_type': instance.diseaseType,
      'disease_type_image': instance.diseaseTypeImage,
      'diseases': instance.diseases,
    };
