import 'package:json_annotation/json_annotation.dart';

part 'level_two_training_response.g.dart';

@JsonSerializable()
class LevelTwoTrainingResponse {
  final int level, id;
  final LevelTwoTrainingDetails details;

  const LevelTwoTrainingResponse({
    required this.level,
    required this.id,
    required this.details,
  });

  factory LevelTwoTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelTwoTrainingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LevelTwoTrainingResponseToJson(this);
}

@JsonSerializable()
class LevelTwoTrainingDetails {
  final bool available;
  @JsonKey(name: 'shape_name')
  final String shapeName;
  final String sentence;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'audio_url')
  final String audioUrl;

  const LevelTwoTrainingDetails({
    required this.available,
    required this.shapeName,
    required this.sentence,
    required this.imageUrl,
    required this.audioUrl,
  });

  factory LevelTwoTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$LevelTwoTrainingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelTwoTrainingDetailsToJson(this);
}
