// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_two_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LevelTwoTrainingResponseImpl _$$LevelTwoTrainingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelTwoTrainingResponseImpl(
      level: (json['level'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      details: LevelTwoTrainingDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LevelTwoTrainingResponseImplToJson(
        _$LevelTwoTrainingResponseImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'id': instance.id,
      'details': instance.details.toJson(),
    };

_$LevelTwoTrainingDetailsImpl _$$LevelTwoTrainingDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelTwoTrainingDetailsImpl(
      available: json['available'] as bool,
      shapeName: json['shape_name'] as String,
      sentence: json['sentence'] as String,
      imageUrl: json['image_url'] as String,
      audioUrl: json['audio_url'] as String,
    );

Map<String, dynamic> _$$LevelTwoTrainingDetailsImplToJson(
        _$LevelTwoTrainingDetailsImpl instance) =>
    <String, dynamic>{
      'available': instance.available,
      'shape_name': instance.shapeName,
      'sentence': instance.sentence,
      'image_url': instance.imageUrl,
      'audio_url': instance.audioUrl,
    };
