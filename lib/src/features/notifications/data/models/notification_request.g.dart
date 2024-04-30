// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationRequest _$NotificationRequestFromJson(Map<String, dynamic> json) =>
    NotificationRequest(
      to: json['to'] as String,
      notification: NotificationContent.fromJson(
          json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationRequestToJson(
        NotificationRequest instance) =>
    <String, dynamic>{
      'to': instance.to,
      'notification': instance.notification.toJson(),
    };

NotificationContent _$NotificationContentFromJson(Map<String, dynamic> json) =>
    NotificationContent(
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$NotificationContentToJson(
        NotificationContent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
