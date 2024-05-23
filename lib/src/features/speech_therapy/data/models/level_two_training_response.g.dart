// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_two_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelTwoTrainingResponse _$LevelTwoTrainingResponseFromJson(
        Map<String, dynamic> json) =>
    LevelTwoTrainingResponse(
      level: (json['level'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      details: LevelTwoTrainingDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LevelTwoTrainingResponseToJson(
        LevelTwoTrainingResponse instance) =>
    <String, dynamic>{
      'level': instance.level,
      'id': instance.id,
      'details': instance.details,
    };

LevelTwoTrainingDetails _$LevelTwoTrainingDetailsFromJson(
        Map<String, dynamic> json) =>
    LevelTwoTrainingDetails(
      available: json['available'] as bool,
      shapeName: json['shape_name'] as String,
      sentence: json['sentence'] as String,
      imageUrl: json['image_url'] as String,
      audioUrl: json['audio_url'] as String,
    );

Map<String, dynamic> _$LevelTwoTrainingDetailsToJson(
        LevelTwoTrainingDetails instance) =>
    <String, dynamic>{
      'available': instance.available,
      'shape_name': instance.shapeName,
      'sentence': instance.sentence,
      'image_url': instance.imageUrl,
      'audio_url': instance.audioUrl,
    };
