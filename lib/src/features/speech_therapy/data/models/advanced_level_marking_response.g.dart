// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_level_marking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdvancedLevelMarkingResponseImpl
    _$$_AdvancedLevelMarkingResponseImplFromJson(Map<String, dynamic> json) =>
        _$_AdvancedLevelMarkingResponseImpl(
          status: json['status'] as String,
          imageUrl: json['image_url'] as String,
          percent: (json['percent'] as num).toDouble(),
        );

Map<String, dynamic> _$$_AdvancedLevelMarkingResponseImplToJson(
        _$_AdvancedLevelMarkingResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'image_url': instance.imageUrl,
      'percent': instance.percent,
    };
