// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_medical_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMedicalResponse _$GetMedicalResponseFromJson(Map<String, dynamic> json) =>
    GetMedicalResponse(
      medicalCategoryName: json['medical_category_name'] as String,
      medicalCategoryImage: json['medical_category_image'] as String,
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => GetMedicalResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMedicalResponseToJson(GetMedicalResponse instance) =>
    <String, dynamic>{
      'medical_category_name': instance.medicalCategoryName,
      'medical_category_image': instance.medicalCategoryImage,
      'data': instance.data,
    };

GetMedicalResponseData _$GetMedicalResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMedicalResponseData(
      diseaseName: json['disease_name'] as String?,
      diseaseImage: json['disease_image'] as String?,
      diseaseType: json['disease_type'] as String?,
      diseaseTypeImage: json['disease_type_image'] as String?,
    );

Map<String, dynamic> _$GetMedicalResponseDataToJson(
        GetMedicalResponseData instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'disease_image': instance.diseaseImage,
      'disease_type': instance.diseaseType,
      'disease_type_image': instance.diseaseTypeImage,
    };
