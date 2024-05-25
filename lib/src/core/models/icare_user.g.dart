// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icare_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ICareUserImpl _$$ICareUserImplFromJson(Map<String, dynamic> json) =>
    _$ICareUserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      profileImage: json['profileImage'] as String?,
      uId: json['uId'] as String?,
      mobileToken: json['mobileToken'] as String?,
    );

Map<String, dynamic> _$$ICareUserImplToJson(_$ICareUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
      'uId': instance.uId,
      'mobileToken': instance.mobileToken,
    };
