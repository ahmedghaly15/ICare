// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeModel _$LikeModelFromJson(Map<String, dynamic> json) => LikeModel(
      user: json['user'] == null
          ? null
          : ICareUser.fromJson(json['user'] as Map<String, dynamic>),
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$LikeModelToJson(LikeModel instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'dateTime': instance.dateTime,
    };
