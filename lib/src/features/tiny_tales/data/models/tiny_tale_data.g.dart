// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiny_tale_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TinyTaleData _$TinyTaleDataFromJson(Map<String, dynamic> json) => TinyTaleData(
      tinyTaleId: json['tinyTaleId'] as String?,
      time: json['time'] as String?,
      date: json['date'] as String?,
      text: json['text'] as String?,
      tinyTaleImage: json['tinyTaleImage'] as String?,
    );

Map<String, dynamic> _$TinyTaleDataToJson(TinyTaleData instance) =>
    <String, dynamic>{
      'tinyTaleId': instance.tinyTaleId,
      'time': instance.time,
      'date': instance.date,
      'text': instance.text,
      'tinyTaleImage': instance.tinyTaleImage,
    };
