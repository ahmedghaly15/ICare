// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkResponse _$MarkResponseFromJson(Map<String, dynamic> json) => MarkResponse(
      status: json['status'] as String,
      imageUrl: json['image_url'] as String,
      percent: (json['percent'] as num).toDouble(),
      next: Next.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MarkResponseToJson(MarkResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'image_url': instance.imageUrl,
      'percent': instance.percent,
      'next': instance.next.toJson(),
    };

Next _$NextFromJson(Map<String, dynamic> json) => Next(
      levelOneDetails: json['levelOneDetails'] == null
          ? null
          : LevelOneTrainingResponse.fromJson(
              json['levelOneDetails'] as Map<String, dynamic>),
      levelTwoDetails: json['levelTwoDetails'] == null
          ? null
          : LevelTwoTrainingResponse.fromJson(
              json['levelTwoDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NextToJson(Next instance) => <String, dynamic>{
      'levelOneDetails': instance.levelOneDetails?.toJson(),
      'levelTwoDetails': instance.levelTwoDetails?.toJson(),
    };
