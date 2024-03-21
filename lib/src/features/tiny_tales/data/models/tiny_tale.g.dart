// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiny_tale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TinyTale $TinyTaleFromJson(Map<String, dynamic> json) => TinyTale(
      user: ICareUser.fromJson(json['user'] as Map<String, dynamic>)
          as ICareUser?,
      text: json['text'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
      tinyTaleImage: json['tinyTaleImage'] as String?,
      tinyTaleId: json['tinyTaleId'] as String?,
    );

Map<String, dynamic> $TinyTaleToJson(TinyTale instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'text': instance.text,
      'date': instance.date,
      'time': instance.time,
      'dateTime': instance.dateTime,
      'tinyTaleImage': instance.tinyTaleImage,
      'tinyTaleId': instance.tinyTaleId,
    };
