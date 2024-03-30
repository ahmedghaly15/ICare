// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiny_tale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TinyTale _$TinyTaleFromJson(Map<String, dynamic> json) => TinyTale(
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      tinyTaleData: json['tinyTaleData'] == null
          ? null
          : TinyTaleData.fromJson(json['tinyTaleData'] as Map<String, dynamic>),
      tinyTaleId: json['tinyTaleId'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$TinyTaleToJson(TinyTale instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'tinyTaleData': instance.tinyTaleData?.toJson(),
      'tinyTaleId': instance.tinyTaleId,
      'dateTime': instance.dateTime,
    };
