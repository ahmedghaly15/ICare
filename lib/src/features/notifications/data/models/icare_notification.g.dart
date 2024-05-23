// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icare_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ICareNotification _$ICareNotificationFromJson(Map<String, dynamic> json) =>
    ICareNotification(
      to: json['to'] as String,
      body: json['body'] as String,
      title: json['title'] as String? ?? AppStrings.appTitle,
      id: json['id'] as String?,
      receiverId: json['receiverId'] as String?,
      tinyTaleId: json['tinyTaleId'] as String?,
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      comment: json['comment'] == null
          ? null
          : CommentModel.fromJson(json['comment'] as Map<String, dynamic>),
      reply: json['reply'] == null
          ? null
          : CommentModel.fromJson(json['reply'] as Map<String, dynamic>),
      tinyTale: json['tinyTale'] == null
          ? null
          : TinyTale.fromJson(json['tinyTale'] as Map<String, dynamic>),
      seen: json['seen'] as bool? ?? false,
      isMessage: json['isMessage'] as bool?,
      isComment: json['isComment'] as bool?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$ICareNotificationToJson(ICareNotification instance) =>
    <String, dynamic>{
      'to': instance.to,
      'body': instance.body,
      'title': instance.title,
      'receiverId': instance.receiverId,
      'id': instance.id,
      'tinyTaleId': instance.tinyTaleId,
      'user': instance.user,
      'comment': instance.comment,
      'reply': instance.reply,
      'tinyTale': instance.tinyTale,
      'seen': instance.seen,
      'isMessage': instance.isMessage,
      'isComment': instance.isComment,
      'dateTime': instance.dateTime,
    };
