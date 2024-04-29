// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationRequest _$NotificationRequestFromJson(Map<String, dynamic> json) =>
    NotificationRequest(
      to: json['to'] as String,
      notification: ICareNotification.fromJson(
          json['notification'] as Map<String, dynamic>),
      receiverId: json['receiverId'] as String?,
    );

Map<String, dynamic> _$NotificationRequestToJson(
        NotificationRequest instance) =>
    <String, dynamic>{
      'to': instance.to,
      'receiverId': instance.receiverId,
      'notification': instance.notification.toJson(),
    };

ICareNotification _$ICareNotificationFromJson(Map<String, dynamic> json) =>
    ICareNotification(
      title: json['title'] as String,
      body: json['body'] as String,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$ICareNotificationToJson(ICareNotification instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'dateTime': instance.dateTime,
    };
