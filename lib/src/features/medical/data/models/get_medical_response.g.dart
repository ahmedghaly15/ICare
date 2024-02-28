// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_medical_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMedicalResponse _$GetMedicalResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMedicalResponse(
      medicalCategoryName: json['medical_category_name'] as String,
      medicalCategoryImage: json['medical_category_image'] as String,
    );

Map<String, dynamic> _$GetMedicalResponseDataToJson(
        GetMedicalResponse instance) =>
    <String, dynamic>{
      'medical_category_name': instance.medicalCategoryName,
      'medical_category_image': instance.medicalCategoryImage,
    };
