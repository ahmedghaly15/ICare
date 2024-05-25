import 'package:freezed_annotation/freezed_annotation.dart';

part 'advanced_level_marking_response.g.dart';
part 'advanced_level_marking_response.freezed.dart';

@freezed
class AdvancedLevelMarkingResponse with _$AdvancedLevelMarkingResponse {
  const factory AdvancedLevelMarkingResponse({
    required String status,
    @JsonKey(name: 'image_url') required String imageUrl,
    required double percent,
  }) = __AdvancedLevelMarkingResponse;

  factory AdvancedLevelMarkingResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvancedLevelMarkingResponseFromJson(json);
}
