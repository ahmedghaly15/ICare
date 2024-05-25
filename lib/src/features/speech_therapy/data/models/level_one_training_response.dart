import 'package:freezed_annotation/freezed_annotation.dart';

part 'level_one_training_response.g.dart';
part 'level_one_training_response.freezed.dart';

@freezed
class LevelOneTrainingResponse with _$LevelOneTrainingResponse {
  const factory LevelOneTrainingResponse({
    required int id,
    required int level,
    required LevelOneTrainingDetails details,
  }) = _LevelOneTrainingResponse;

  factory LevelOneTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingResponseFromJson(json);
}

@freezed
class LevelOneTrainingDetails with _$LevelOneTrainingDetails {
  const factory LevelOneTrainingDetails({
    @JsonKey(name: 'animal_name') required String animalName,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'audio_url') required String audioUrl,
    required bool available,
  }) = _LevelOneTrainingDetails;

  factory LevelOneTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$LevelOneTrainingDetailsFromJson(json);
}
