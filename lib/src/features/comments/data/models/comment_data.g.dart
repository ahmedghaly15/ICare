// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentData _$CommentDataFromJson(Map<String, dynamic> json) => CommentData(
      commentImage: json['commentImage'] as Map<String, dynamic>?,
      commentText: json['commentText'] as String?,
      time: json['time'] as String?,
      date: json['date'] as String?,
      commentId: json['commentId'] as String?,
    );

Map<String, dynamic> _$CommentDataToJson(CommentData instance) =>
    <String, dynamic>{
      'commentImage': instance.commentImage,
      'commentText': instance.commentText,
      'time': instance.time,
      'date': instance.date,
      'commentId': instance.commentId,
    };
