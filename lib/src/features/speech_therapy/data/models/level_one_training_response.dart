import 'package:json_annotation/json_annotation.dart';

part 'level_one_training_response.g.dart';

@JsonSerializable()
class LevelOneTrainingResponse {
  final int id, level;
  final LevelOneTrainingDetails details;

  const LevelOneTrainingResponse({
    required this.level,
    required this.id,
    required this.details,
  });

  factory LevelOneTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LevelOneTrainingResponseToJson(this);
}

@JsonSerializable()
class LevelOneTrainingDetails {
  @JsonKey(name: 'animal_name')
  final String animalName;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'audio_url')
  final String audioUrl;

  const LevelOneTrainingDetails({
    required this.animalName,
    required this.imageUrl,
    required this.audioUrl,
  });

  factory LevelOneTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelOneTrainingDetailsToJson(this);
}
