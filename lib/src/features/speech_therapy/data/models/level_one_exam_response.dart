import 'package:json_annotation/json_annotation.dart';

part 'level_one_exam_response.g.dart';

@JsonSerializable()
class LevelOneExamResponse {
  final int id;
  @JsonKey(name: 'image_url')
  final String imageUrl;

  const LevelOneExamResponse({
    required this.id,
    required this.imageUrl,
  });

  factory LevelOneExamResponse.fromJson(Map<String, dynamic> json) =>
      _$LevelOneExamResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LevelOneExamResponseToJson(this);
}
