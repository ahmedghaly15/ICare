// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_one_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelOneTrainingResponse _$LevelOneTrainingResponseFromJson(
        Map<String, dynamic> json) =>
    LevelOneTrainingResponse(
      level: (json['level'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      details: LevelOneTrainingDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LevelOneTrainingResponseToJson(
        LevelOneTrainingResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'details': instance.details,
    };

LevelOneTrainingDetails _$LevelOneTrainingDetailsFromJson(
        Map<String, dynamic> json) =>
    LevelOneTrainingDetails(
      animalName: json['animal_name'] as String,
      imageUrl: json['image_url'] as String,
      audioUrl: json['audio_url'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$LevelOneTrainingDetailsToJson(
        LevelOneTrainingDetails instance) =>
    <String, dynamic>{
      'animal_name': instance.animalName,
      'image_url': instance.imageUrl,
      'audio_url': instance.audioUrl,
      'available': instance.available,
    };
