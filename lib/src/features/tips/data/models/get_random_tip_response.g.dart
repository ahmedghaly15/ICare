// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_random_tip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRandomTipResponse _$GetRandomTipResponseFromJson(
        Map<String, dynamic> json) =>
    GetRandomTipResponse(
      whatToSay: json['what_to_say'] as String,
      topic: json['topic'] as String,
      info: json['info'] as String,
    );

Map<String, dynamic> _$GetRandomTipResponseToJson(
        GetRandomTipResponse instance) =>
    <String, dynamic>{
      'what_to_say': instance.whatToSay,
      'topic': instance.topic,
      'info': instance.info,
    };
