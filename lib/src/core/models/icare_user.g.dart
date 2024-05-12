// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icare_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ICareUser _$ICareUserFromJson(Map<String, dynamic> json) => ICareUser(
      name: json['name'] as String?,
      email: json['email'] as String?,
      uId: json['uId'] as String?,
      profileImage: json['profileImage'] as String?,
      mobileToken: json['mobileToken'] as String?,
      createdAt: json['createdAt'] as Timestamp?,
    );

Map<String, dynamic> _$ICareUserToJson(ICareUser instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
      'uId': instance.uId,
      'mobileToken': instance.mobileToken,
      'createdAt': instance.createdAt,
    };
