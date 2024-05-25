// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoreResponseImpl _$$ScoreResponseImplFromJson(Map<String, dynamic> json) =>
    _$ScoreResponseImpl(
      level: (json['level'] as num).toInt(),
      subLevels: (json['sub_levels'] as List<dynamic>)
          .map((e) => ScoreDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScoreResponseImplToJson(_$ScoreResponseImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'sub_levels': instance.subLevels.map((e) => e.toJson()).toList(),
    };

_$ScoreDetailsImpl _$$ScoreDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ScoreDetailsImpl(
      subLevelNameAr: json['sub_level_name_ar'] as String?,
      subLevelNameEn: json['sub_level_name_en'] as String?,
      subLevelImageUrl: json['sub_level_image_url'] as String?,
      subLevelPercent: (json['sub_level_percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$ScoreDetailsImplToJson(_$ScoreDetailsImpl instance) =>
    <String, dynamic>{
      'sub_level_name_ar': instance.subLevelNameAr,
      'sub_level_name_en': instance.subLevelNameEn,
      'sub_level_image_url': instance.subLevelImageUrl,
      'sub_level_percent': instance.subLevelPercent,
    };
