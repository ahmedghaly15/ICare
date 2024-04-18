import 'package:json_annotation/json_annotation.dart';

part 'advanced_level_training_response.g.dart';

@JsonSerializable()
class AdvancedLevelTrainingResponse {
  final int id, level;
  final AdvancedLevelTrainingDetails details;

  const AdvancedLevelTrainingResponse({
    required this.id,
    required this.level,
    required this.details,
  });

  factory AdvancedLevelTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelTrainingResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AdvancedLevelTrainingResponseToJson(this);
}

@JsonSerializable()
class AdvancedLevelTrainingDetails {
  @JsonKey(name: 'surah_name_ar')
  final String surahNameAr;
  @JsonKey(name: 'surah_name_en')
  final String surahNameEn;
  @JsonKey(name: 'type_ar')
  final String typeAr;
  @JsonKey(name: 'ayahs_num')
  final int ayahsNum;
  @JsonKey(name: 'bismillah_ar')
  final String bismillahAr;
  @JsonKey(name: 'bismillah_audio_url')
  final String bismillahAudioUrl;
  @JsonKey(name: 'bismillah_en')
  final String bismillahEn;
  @JsonKey(name: 'full_surah')
  final List<Ayah> fullSurah;

  const AdvancedLevelTrainingDetails({
    required this.surahNameAr,
    required this.surahNameEn,
    required this.typeAr,
    required this.ayahsNum,
    required this.bismillahAr,
    required this.bismillahAudioUrl,
    required this.bismillahEn,
    required this.fullSurah,
  });

  factory AdvancedLevelTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelTrainingDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$AdvancedLevelTrainingDetailsToJson(this);
}

@JsonSerializable()
class Ayah {
  @JsonKey(name: 'ayah_num')
  final int ayahNum;
  @JsonKey(name: 'ayah_ar')
  final String ayahAr;
  @JsonKey(name: 'ayah_en')
  final String ayahEn;
  @JsonKey(name: 'ayah_audio_url')
  final String ayahAudioUrl;

  const Ayah({
    required this.ayahNum,
    required this.ayahAr,
    required this.ayahEn,
    required this.ayahAudioUrl,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
  Map<String, dynamic> toJson() => _$AyahToJson(this);
}
