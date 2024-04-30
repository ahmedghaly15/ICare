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
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : CommentModel.fromJson(json['comment'] as Map<String, dynamic>),
      tinyTale: json['tinyTale'] == null
          ? null
          : TinyTale.fromJson(json['tinyTale'] as Map<String, dynamic>),
      reply: json['reply'] == null
          ? null
          : CommentModel.fromJson(json['reply'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendNotificationParamsToJson(
        SendNotificationParams instance) =>
    <String, dynamic>{
      'to': instance.to,
      'body': instance.body,
      'title': instance.title,
      'receiverId': instance.receiverId,
      'dateTime': instance.dateTime,
      'user': instance.user?.toJson(),
      'comment': instance.comment?.toJson(),
      'tinyTale': instance.tinyTale?.toJson(),
      'reply': instance.reply?.toJson(),
    };
