// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseDataImpl _$$DiseaseDataImplFromJson(Map<String, dynamic> json) =>
    _$DiseaseDataImpl(
      diseaseName: json['disease_name'] as String,
      diseaseImage: json['disease_image'] as String,
      id: json['ID'] as String,
    );

Map<String, dynamic> _$$DiseaseDataImplToJson(_$DiseaseDataImpl instance) =>
    <String, dynamic>{
      'disease_name': instance.diseaseName,
      'disease_image': instance.diseaseImage,
      'ID': instance.id,
    };
