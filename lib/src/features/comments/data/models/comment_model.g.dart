// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      commentData: json['commentData'] == null
          ? null
          : CommentData.fromJson(json['commentData'] as Map<String, dynamic>),
      commentId: json['commentId'] as String?,
      dateTime: json['dateTime'] as Timestamp?,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      'commentData': instance.commentData?.toJson(),
      'commentId': instance.commentId,
      'dateTime': instance.dateTime,
    };
