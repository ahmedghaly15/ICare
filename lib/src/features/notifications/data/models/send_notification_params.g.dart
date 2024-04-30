// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_notification_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendNotificationParams _$SendNotificationParamsFromJson(
        Map<String, dynamic> json) =>
    SendNotificationParams(
      to: json['to'] as String,
      body: json['body'] as String,
      title: json['title'] as String,
      receiverId: json['receiverId'] as String,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$SendNotificationParamsToJson(
        SendNotificationParams instance) =>
    <String, dynamic>{
      'to': instance.to,
      'body': instance.body,
      'title': instance.title,
      'receiverId': instance.receiverId,
      'dateTime': instance.dateTime,
    };
