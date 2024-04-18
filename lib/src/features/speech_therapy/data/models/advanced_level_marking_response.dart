import 'package:json_annotation/json_annotation.dart';

part 'advanced_level_marking_response.g.dart';

@JsonSerializable()
class AdvancedLevelMarkingResponse {
  final String status;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final double percent;

  const AdvancedLevelMarkingResponse({
    required this.status,
    required this.imageUrl,
    required this.percent,
  });

  factory AdvancedLevelMarkingResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelMarkingResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AdvancedLevelMarkingResponseToJson(this);
}
