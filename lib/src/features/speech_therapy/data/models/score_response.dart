import 'package:json_annotation/json_annotation.dart';

part 'score_response.g.dart';

@JsonSerializable()
class ScoreResponse {
  final int level;
  @JsonKey(name: 'sub_levels')
  final List<ScoreDetail> subLevels;

  const ScoreResponse({required this.level, required this.subLevels});

  factory ScoreResponse.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ScoreResponseToJson(this);
}

@JsonSerializable()
class ScoreDetail {
  @JsonKey(name: 'sub_level_name_ar')
  final String? subLevelNameAr;
  @JsonKey(name: 'sub_level_name_en')
  final String? subLevelNameEn;
  @JsonKey(name: 'sub_level_image_url')
  final String? subLevelImageUrl;
  @JsonKey(name: 'sub_level_percent')
  final double subLevelPercent;

  const ScoreDetail({
    required this.subLevelNameAr,
    required this.subLevelNameEn,
    required this.subLevelImageUrl,
    required this.subLevelPercent,
  });

  factory ScoreDetail.fromJson(Map<String, dynamic> json) =>
      _$ScoreDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ScoreDetailToJson(this);
}
