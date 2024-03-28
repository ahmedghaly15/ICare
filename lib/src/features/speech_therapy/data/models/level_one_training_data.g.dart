// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_one_training_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LevelOneTrainingData _$LevelOneTrainingDataFromJson(
        Map<String, dynamic> json) =>
    LevelOneTrainingData(
      id: json['id'] as int,
      details: LevelOneTrainingDataDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LevelOneTrainingDataToJson(
        LevelOneTrainingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'details': instance.details,
    };

LevelOneTrainingDataDetails _$LevelOneTrainingDataDetailsFromJson(
        Map<String, dynamic> json) =>
    LevelOneTrainingDataDetails(
      animalName: json['animal_name'] as String,
      imageUrl: json['image_url'] as String,
      audioUrl: json['audio_url'] as String,
    );

Map<String, dynamic> _$LevelOneTrainingDataDetailsToJson(
        LevelOneTrainingDataDetails instance) =>
    <String, dynamic>{
      'animal_name': instance.animalName,
      'image_url': instance.imageUrl,
      'audio_url': instance.audioUrl,
    };
