import 'package:icare/src/features/speech_therapy/data/models/level_one_training_response.dart';
import 'package:icare/src/features/speech_therapy/data/models/level_two_training_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mark_response.g.dart';

@JsonSerializable()
class MarkResponse {
  final String status;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final double percent;
  final Next next;

  const MarkResponse({
    required this.status,
    required this.imageUrl,
    required this.percent,
    required this.next,
  });

  factory MarkResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MarkResponseToJson(this);
}

@JsonSerializable()
class Next {
  final LevelOneTrainingResponse? levelOneDetails;
  final LevelTwoTrainingResponse? levelTwoDetails;

  const Next({
    this.levelOneDetails,
    this.levelTwoDetails,
  });

  factory Next.fromJson(Map<String, dynamic> json) => _$NextFromJson(json);
  Map<String, dynamic> toJson() => _$NextToJson(this);
}
