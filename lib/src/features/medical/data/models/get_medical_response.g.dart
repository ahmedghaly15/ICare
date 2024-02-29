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

GetMedicalResponseData _$GetMedicalResponseDataFromJson(
        Map<String, dynamic> json) =>
    GetMedicalResponseData(
      diseaseName: json['disease_name'] as String,
      diseaseImage: json['disease_image'] as String,
    );
