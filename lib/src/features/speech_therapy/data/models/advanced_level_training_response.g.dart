// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_level_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvancedLevelTrainingResponseImpl
    _$$AdvancedLevelTrainingResponseImplFromJson(Map<String, dynamic> json) =>
        _$AdvancedLevelTrainingResponseImpl(
          id: (json['id'] as num).toInt(),
          level: (json['level'] as num).toInt(),
          details: AdvancedLevelTrainingDetails.fromJson(
              json['details'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AdvancedLevelTrainingResponseImplToJson(
        _$AdvancedLevelTrainingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'details': instance.details.toJson(),
    };

_$AdvancedLevelTrainingDetailsImpl _$$AdvancedLevelTrainingDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvancedLevelTrainingDetailsImpl(
      surahNameAr: json['surah_name_ar'] as String,
      surahNameEn: json['surah_name_en'] as String,
      typeAr: json['type_ar'] as String,
      typeEn: json['type_en'] as String,
      ayahsNum: (json['ayahs_num'] as num).toInt(),
      fullSurah: (json['full_surah'] as List<dynamic>)
          .map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdvancedLevelTrainingDetailsImplToJson(
        _$AdvancedLevelTrainingDetailsImpl instance) =>
    <String, dynamic>{
      'surah_name_ar': instance.surahNameAr,
      'surah_name_en': instance.surahNameEn,
      'type_ar': instance.typeAr,
      'type_en': instance.typeEn,
      'ayahs_num': instance.ayahsNum,
      'full_surah': instance.fullSurah.map((e) => e.toJson()).toList(),
    };

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      ayahNum: (json['ayah_num'] as num).toInt(),
      ayahAr: json['ayah_ar'] as String,
      ayahEn: json['ayah_en'] as String,
      ayahAudioUrl: json['ayah_audio_url'] as String,
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'ayah_num': instance.ayahNum,
      'ayah_ar': instance.ayahAr,
      'ayah_en': instance.ayahEn,
      'ayah_audio_url': instance.ayahAudioUrl,
    };