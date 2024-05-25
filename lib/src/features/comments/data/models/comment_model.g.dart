// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      commentData: json['commentData'] == null
          ? null
          : CommentData.fromJson(json['commentData'] as Map<String, dynamic>),
      commentId: json['commentId'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'commentData': instance.commentData?.toJson(),
      'commentId': instance.commentId,
      'dateTime': instance.dateTime,
    };

_$CommentDataImpl _$$CommentDataImplFromJson(Map<String, dynamic> json) =>
    _$CommentDataImpl(
      commentImage: json['commentImage'] as String?,
      commentText: json['commentText'] as String?,
      time: json['time'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$CommentDataImplToJson(_$CommentDataImpl instance) =>
    <String, dynamic>{
      'commentImage': instance.commentImage,
      'commentText': instance.commentText,
      'time': instance.time,
      'date': instance.date,
    };
