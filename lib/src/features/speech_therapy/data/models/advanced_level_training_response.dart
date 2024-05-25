import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_level_training_response.g.dart';
part 'advanced_level_training_response.freezed.dart';

@freezed
class AdvancedLevelTrainingResponse with _$AdvancedLevelTrainingResponse {
  const factory AdvancedLevelTrainingResponse({
    required int id,
    required int level,
    required AdvancedLevelTrainingDetails details,
  }) = _AdvancedLevelTrainingResponse;

  factory AdvancedLevelTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelTrainingResponseFromJson(json);
}

@freezed
class AdvancedLevelTrainingDetails with _$AdvancedLevelTrainingDetails {
  const factory AdvancedLevelTrainingDetails({
    @JsonKey(name: 'surah_name_ar') required String surahNameAr,
    @JsonKey(name: 'surah_name_en') required String surahNameEn,
    @JsonKey(name: 'type_ar') required String typeAr,
    @JsonKey(name: 'type_en') required String typeEn,
    @JsonKey(name: 'ayahs_num') required int ayahsNum,
    @JsonKey(name: 'full_surah') required List<Ayah> fullSurah,
  }) = _AdvancedLevelTrainingDetails;

  factory AdvancedLevelTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelTrainingDetailsFromJson(json);
}

@freezed
class Ayah with _$Ayah {
  const factory Ayah({
    @JsonKey(name: 'ayah_num') required int ayahNum,
    @JsonKey(name: 'ayah_ar') required String ayahAr,
    @JsonKey(name: 'ayah_en') required String ayahEn,
    @JsonKey(name: 'ayah_audio_url') required String ayahAudioUrl,
  }) = _Ayah;

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);
}
