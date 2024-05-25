import 'package:freezed_annotation/freezed_annotation.dart';

part 'speech_therapy_level.g.dart';
part 'speech_therapy_level.freezed.dart';

@freezed
class SpeechTherapyLevel with _$SpeechTherapyLevel {
  const factory SpeechTherapyLevel({
    required String level,
    required String description,
    @JsonKey(name: 'image_url') required String imageUrl,
  }) = __SpeechTherapyLevel;

  factory SpeechTherapyLevel.fromJson(Map<String, dynamic> json) =>
      _$SpeechTherapyLevelFromJson(json);
}
