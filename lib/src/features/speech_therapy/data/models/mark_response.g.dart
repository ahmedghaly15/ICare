// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkResponseImpl _$$MarkResponseImplFromJson(Map<String, dynamic> json) =>
    _$MarkResponseImpl(
      status: json['status'] as String,
      imageUrl: json['image_url'] as String,
      percent: (json['percent'] as num).toDouble(),
      next: Next.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarkResponseImplToJson(_$MarkResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'image_url': instance.imageUrl,
      'percent': instance.percent,
      'next': instance.next.toJson(),
    };

_$NextImpl _$$NextImplFromJson(Map<String, dynamic> json) => _$NextImpl(
      levelOneDetails: json['levelOneDetails'] == null
          ? null
          : LevelOneTrainingResponse.fromJson(
              json['levelOneDetails'] as Map<String, dynamic>),
      levelTwoDetails: json['levelTwoDetails'] == null
          ? null
          : LevelTwoTrainingResponse.fromJson(
              json['levelTwoDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NextImplToJson(_$NextImpl instance) =>
    <String, dynamic>{
      'levelOneDetails': instance.levelOneDetails?.toJson(),
      'levelTwoDetails': instance.levelTwoDetails?.toJson(),
    };
