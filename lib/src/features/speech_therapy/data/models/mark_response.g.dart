// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkResponse _$MarkResponseFromJson(Map<String, dynamic> json) => MarkResponse(
      status: json['status'] as String,
      imageUrl: json['image_url'] as String,
      percent: (json['percent'] as num).toDouble(),
      next: json['next'] as int?,
    );

Map<String, dynamic> _$MarkResponseToJson(MarkResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'image_url': instance.imageUrl,
      'percent': instance.percent,
      'next': instance.next,
    };
