// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkResponse _$MarkResponseFromJson(Map<String, dynamic> json) => MarkResponse(
      status: json['status'] as String,
      percent: json['percent'] as int,
      next: json['next'] as int,
    );

Map<String, dynamic> _$MarkResponseToJson(MarkResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'percent': instance.percent,
      'next': instance.next,
    };
