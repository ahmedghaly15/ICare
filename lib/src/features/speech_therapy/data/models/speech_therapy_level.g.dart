// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speech_therapy_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeechTherapyLevel _$SpeechTherapyLevelFromJson(Map<String, dynamic> json) =>
    SpeechTherapyLevel(
      level: json['level'] as String,
      description: json['description'] as String,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$SpeechTherapyLevelToJson(SpeechTherapyLevel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'description': instance.description,
      'image_url': instance.imageUrl,
    };
