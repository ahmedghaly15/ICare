// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeveloperImpl _$$DeveloperImplFromJson(Map<String, dynamic> json) =>
    _$DeveloperImpl(
      name: json['name'] as String,
      title: json['title'] as String,
      gitHub: json['GitHub'] as String?,
      linkedIn: json['LinkedIn'] as String?,
    );

Map<String, dynamic> _$$DeveloperImplToJson(_$DeveloperImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'GitHub': instance.gitHub,
      'LinkedIn': instance.linkedIn,
    };
