// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseData _$DiseaseDataFromJson(Map<String, dynamic> json) => DiseaseData(
      diseaseName: json['disease_name'] as String,
      diseaseImage: json['disease_image'] as String,
      id: json['ID'] as String,
    );

Map<String, dynamic> _$DiseaseDataToJson(DiseaseData instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'disease_image': instance.diseaseImage,
      'ID': instance.id,
    };
