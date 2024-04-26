import 'package:json_annotation/json_annotation.dart';

part 'speech_therapy_level.g.dart';

@JsonSerializable()
class SpeechTherapyLevel {
  final String level, description;
  @JsonKey(name: 'image_url')
  final String imageUrl;

  const SpeechTherapyLevel({
    required this.level,
    required this.description,
    required this.imageUrl,
  });

  factory SpeechTherapyLevel.fromJson(Map<String, dynamic> json) =>
      _$SpeechTherapyLevelFromJson(json);
  Map<String, dynamic> toJson() => _$SpeechTherapyLevelToJson(this);
}
