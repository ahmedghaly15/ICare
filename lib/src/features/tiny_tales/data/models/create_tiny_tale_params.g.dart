// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tiny_tale_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTinyTaleParams _$CreateTinyTaleParamsFromJson(
        Map<String, dynamic> json) =>
    CreateTinyTaleParams(
      text: json['text'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      tinyTaleImage: json['tinyTaleImage'] as String?,
    );

Map<String, dynamic> _$CreateTinyTaleParamsToJson(
        CreateTinyTaleParams instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'text': instance.text,
      'tinyTaleImage': instance.tinyTaleImage,
    };
