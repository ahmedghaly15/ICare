// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiny_tale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TinyTaleImpl _$$TinyTaleImplFromJson(Map<String, dynamic> json) =>
    _$TinyTaleImpl(
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      tinyTaleData: json['tinyTaleData'] == null
          ? null
          : TinyTaleData.fromJson(json['tinyTaleData'] as Map<String, dynamic>),
      tinyTaleId: json['tinyTaleId'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$$TinyTaleImplToJson(_$TinyTaleImpl instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'tinyTaleData': instance.tinyTaleData?.toJson(),
      'tinyTaleId': instance.tinyTaleId,
      'dateTime': instance.dateTime,
    };

_$TinyTaleDataImpl _$$TinyTaleDataImplFromJson(Map<String, dynamic> json) =>
    _$TinyTaleDataImpl(
      time: json['time'] as String?,
      date: json['date'] as String?,
      text: json['text'] as String?,
      tinyTaleImage: json['tinyTaleImage'] as String?,
    );

Map<String, dynamic> _$$TinyTaleDataImplToJson(_$TinyTaleDataImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'date': instance.date,
      'text': instance.text,
      'tinyTaleImage': instance.tinyTaleImage,
    };
