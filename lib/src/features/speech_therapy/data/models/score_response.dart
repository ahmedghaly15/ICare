import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_response.g.dart';
part 'score_response.freezed.dart';

@freezed
class ScoreResponse with _$ScoreResponse {
  const factory ScoreResponse({
    required int level,
    @JsonKey(name: 'sub_levels') required List<ScoreDetail> subLevels,
  }) = _ScoreResponse;

  factory ScoreResponse.fromJson(Map<String, dynamic> json) =>
      _$ScoreResponseFromJson(json);
}

@freezed
class ScoreDetail with _$ScoreDetail {
  const factory ScoreDetail({
    @JsonKey(name: 'sub_level_name_ar') required String? subLevelNameAr,
    @JsonKey(name: 'sub_level_name_en') required String? subLevelNameEn,
    @JsonKey(name: 'sub_level_image_url') required String? subLevelImageUrl,
    @JsonKey(name: 'sub_level_percent') required double subLevelPercent,
  }) = _ScoreDetails;

  factory ScoreDetail.fromJson(Map<String, dynamic> json) =>
      _$ScoreDetailFromJson(json);
}
