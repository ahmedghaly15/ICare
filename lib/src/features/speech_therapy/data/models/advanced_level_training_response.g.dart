// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advanced_level_training_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvancedLevelTrainingResponse _$AdvancedLevelTrainingResponseFromJson(
        Map<String, dynamic> json) =>
    AdvancedLevelTrainingResponse(
      id: json['id'] as int,
      level: json['level'] as int,
      details: AdvancedLevelTrainingDetails.fromJson(
          json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvancedLevelTrainingResponseToJson(
        AdvancedLevelTrainingResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'details': instance.details.toJson(),
    };

AdvancedLevelTrainingDetails _$AdvancedLevelTrainingDetailsFromJson(
        Map<String, dynamic> json) =>
    AdvancedLevelTrainingDetails(
      surahNameAr: json['surah_name_ar'] as String,
      surahNameEn: json['surah_name_en'] as String,
      typeAr: json['type_ar'] as String,
      typeEn: json['type_en'] as String,
      ayahsNum: json['ayahs_num'] as int,
      bismillahAr: json['bismillah_ar'] as String,
      bismillahAudioUrl: json['bismillah_audio_url'] as String,
      bismillahEn: json['bismillah_en'] as String,
      fullSurah: (json['full_surah'] as List<dynamic>)
          .map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvancedLevelTrainingDetailsToJson(
        AdvancedLevelTrainingDetails instance) =>
    <String, dynamic>{
      'surah_name_ar': instance.surahNameAr,
      'surah_name_en': instance.surahNameEn,
      'type_ar': instance.typeAr,
      'type_en': instance.typeEn,
      'ayahs_num': instance.ayahsNum,
      'bismillah_ar': instance.bismillahAr,
      'bismillah_audio_url': instance.bismillahAudioUrl,
      'bismillah_en': instance.bismillahEn,
      'full_surah': instance.fullSurah.map((e) => e.toJson()).toList(),
    };

Ayah _$AyahFromJson(Map<String, dynamic> json) => Ayah(
      ayahNum: json['ayah_num'] as int,
      ayahAr: json['ayah_ar'] as String,
      ayahEn: json['ayah_en'] as String,
      ayahAudioUrl: json['ayah_audio_url'] as String,
    );

Map<String, dynamic> _$AyahToJson(Ayah instance) => <String, dynamic>{
      'ayah_num': instance.ayahNum,
      'ayah_ar': instance.ayahAr,
      'ayah_en': instance.ayahEn,
      'ayah_audio_url': instance.ayahAudioUrl,
    };
