// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_level_marking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvancedLevelMarkingResponse _$AdvancedLevelMarkingResponseFromJson(
        Map<String, dynamic> json) =>
    AdvancedLevelMarkingResponse(
      status: json['status'] as String,
      imageUrl: json['image_url'] as String,
      percent: (json['percent'] as num).toDouble(),
    );

Map<String, dynamic> _$AdvancedLevelMarkingResponseToJson(
        AdvancedLevelMarkingResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'image_url': instance.imageUrl,
      'percent': instance.percent,
    };
