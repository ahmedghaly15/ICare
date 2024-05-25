// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationRequestImpl _$$NotificationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationRequestImpl(
      to: json['to'] as String,
      notification: NotificationContent.fromJson(
          json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationRequestImplToJson(
        _$NotificationRequestImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'notification': instance.notification.toJson(),
    };

_$NotificationContentImpl _$$NotificationContentImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationContentImpl(
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$NotificationContentImplToJson(
        _$NotificationContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
