// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_random_tip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRandomTipResponseImpl _$$GetRandomTipResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRandomTipResponseImpl(
      whatToSay: json['what_to_say'] as String,
      topic: json['topic'] as String,
      info: json['info'] as String,
    );

Map<String, dynamic> _$$GetRandomTipResponseImplToJson(
        _$GetRandomTipResponseImpl instance) =>
    <String, dynamic>{
      'what_to_say': instance.whatToSay,
      'topic': instance.topic,
      'info': instance.info,
    };
