import 'package:json_annotation/json_annotation.dart';

part 'level_one_training_data.g.dart';

@JsonSerializable()
class LevelOneTrainingData {
  final int id;
  final LevelOneTrainingDataDetails details;

  const LevelOneTrainingData({
    required this.id,
    required this.details,
  });

  factory LevelOneTrainingData.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingDataFromJson(json);

  Map<String, dynamic> toJson() => _$LevelOneTrainingDataToJson(this);
}

@JsonSerializable()
class LevelOneTrainingDataDetails {
  @JsonKey(name: 'animal_name')
  final String animalName;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @JsonKey(name: 'audio_url')
  final String audioUrl;

  const LevelOneTrainingDataDetails({
    required this.animalName,
    required this.imageUrl,
    required this.audioUrl,
  });

  factory LevelOneTrainingDataDetails.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingDataDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelOneTrainingDataDetailsToJson(this);
}
