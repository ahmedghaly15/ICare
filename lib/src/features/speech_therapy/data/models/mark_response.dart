import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';

part 'mark_response.g.dart';
part 'mark_response.freezed.dart';

@freezed
class MarkResponse with _$MarkResponse {
  const factory MarkResponse({
    required String status,
    @JsonKey(name: 'image_url') required String imageUrl,
    required double percent,
    required Next next,
  }) = _MarkResponse;

  factory MarkResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkResponseFromJson(json);
}

@freezed
class Next with _$Next {
  const factory Next({
    LevelOneTrainingResponse? levelOneDetails,
    LevelTwoTrainingResponse? levelTwoDetails,
  }) = _Next;

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
}
