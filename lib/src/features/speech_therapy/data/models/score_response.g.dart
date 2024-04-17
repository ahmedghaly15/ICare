// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreResponse _$ScoreResponseFromJson(Map<String, dynamic> json) =>
    ScoreResponse(
      level: json['level'] as int,
      subLevels: (json['sub_levels'] as List<dynamic>)
          .map((e) => ScoreDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScoreResponseToJson(ScoreResponse instance) =>
    <String, dynamic>{
      'level': instance.level,
      'sub_levels': instance.subLevels.map((e) => e.toJson()).toList(),
    };

ScoreDetail _$ScoreDetailFromJson(Map<String, dynamic> json) => ScoreDetail(
      subLevelNameAr: json['sub_level_name_ar'] as String?,
      subLevelNameEn: json['sub_level_name_en'] as String?,
      subLevelImageUrl: json['sub_level_image_url'] as String?,
      subLevelPercent: json['sub_level_percent'] as int,
    );

Map<String, dynamic> _$ScoreDetailToJson(ScoreDetail instance) =>
    <String, dynamic>{
      'sub_level_name_ar': instance.subLevelNameAr,
      'sub_level_name_en': instance.subLevelNameEn,
      'sub_level_image_url': instance.subLevelImageUrl,
      'sub_level_percent': instance.subLevelPercent,
    };
