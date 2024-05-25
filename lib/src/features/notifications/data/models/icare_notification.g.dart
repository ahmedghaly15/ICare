// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icare_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ICareNotificationImpl _$$ICareNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$ICareNotificationImpl(
      to: json['to'] as String,
      body: json['body'] as String,
      title: json['title'] as String? ?? AppStrings.appTitle,
      seen: json['seen'] as bool? ?? false,
      receiverId: json['receiverId'] as String?,
      id: json['id'] as String?,
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
      isMessage: json['isMessage'] as bool?,
      isComment: json['isComment'] as bool?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$$ICareNotificationImplToJson(
        _$ICareNotificationImpl instance) =>
    <String, dynamic>{
      'to': instance.to,
      'body': instance.body,
      'title': instance.title,
      'seen': instance.seen,
      'receiverId': instance.receiverId,
      'id': instance.id,
      'tinyTaleId': instance.tinyTaleId,
      'user': instance.user?.toJson(),
      'comment': instance.comment?.toJson(),
      'reply': instance.reply?.toJson(),
      'tinyTale': instance.tinyTale?.toJson(),
      'isMessage': instance.isMessage,
      'isComment': instance.isComment,
      'dateTime': instance.dateTime,
    };
