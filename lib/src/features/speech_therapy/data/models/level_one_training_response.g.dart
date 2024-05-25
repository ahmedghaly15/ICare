// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_one_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LevelOneTrainingResponseImpl _$$LevelOneTrainingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelOneTrainingResponseImpl(
      id: (json['id'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      details: LevelOneTrainingDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LevelOneTrainingResponseImplToJson(
        _$LevelOneTrainingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'details': instance.details.toJson(),
    };

_$LevelOneTrainingDetailsImpl _$$LevelOneTrainingDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelOneTrainingDetailsImpl(
      animalName: json['animal_name'] as String,
      imageUrl: json['image_url'] as String,
      audioUrl: json['audio_url'] as String,
      available: json['available'] as bool,
    );

Map<String, dynamic> _$$LevelOneTrainingDetailsImplToJson(
        _$LevelOneTrainingDetailsImpl instance) =>
    <String, dynamic>{
      'animal_name': instance.animalName,
      'image_url': instance.imageUrl,
      'audio_url': instance.audioUrl,
      'available': instance.available,
    };
