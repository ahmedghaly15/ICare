// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageParamsImpl _$$SendMessageParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageParamsImpl(
      time: json['time'] as String?,
      date: json['date'] as String?,
      messageText: json['messageText'] as String?,
      messageImage: json['messageImage'] as String?,
      receiver: json['receiver'] == null
          ? null
          : ICareUser.fromJson(json['receiver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SendMessageParamsImplToJson(
        _$SendMessageParamsImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'date': instance.date,
      'messageText': instance.messageText,
      'messageImage': instance.messageImage,
      'receiver': instance.receiver?.toJson(),
    };
