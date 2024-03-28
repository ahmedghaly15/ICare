// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkingResponse _$MarkingResponseFromJson(Map<String, dynamic> json) =>
    MarkingResponse(
      status: json['status'] as String,
      percent: json['percent'] as int,
    );

Map<String, dynamic> _$MarkingResponseToJson(MarkingResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'percent': instance.percent,
    };
