import 'package:freezed_annotation/freezed_annotation.dart';

part 'level_two_training_response.g.dart';
part 'level_two_training_response.freezed.dart';

@freezed
class LevelTwoTrainingResponse with _$LevelTwoTrainingResponse {
  const factory LevelTwoTrainingResponse({
    required int level,
    required int id,
    required LevelTwoTrainingDetails details,
  }) = _LevelTwoTrainingResponse;

  factory LevelTwoTrainingResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelTwoTrainingResponseFromJson(json);
}

@freezed
class LevelTwoTrainingDetails with _$LevelTwoTrainingDetails {
  const factory LevelTwoTrainingDetails({
    required bool available,
    @JsonKey(name: 'shape_name') required String shapeName,
    required String sentence,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'audio_url') required String audioUrl,
  }) = _LevelTwoTrainingDetails;

  factory LevelTwoTrainingDetails.fromJson(Map<String, dynamic> json) =>
      _$LevelTwoTrainingDetailsFromJson(json);
}
