// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Developer _$DeveloperFromJson(Map<String, dynamic> json) => Developer(
      name: json['name'] as String,
      title: json['title'] as String,
      gitHub: json['GitHub'] as String?,
      linkedIn: json['LinkedIn'] as String?,
    );

Map<String, dynamic> _$DeveloperToJson(Developer instance) => <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'GitHub': instance.gitHub,
      'LinkedIn': instance.linkedIn,
    };
