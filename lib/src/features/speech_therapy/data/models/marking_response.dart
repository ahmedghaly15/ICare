import 'package:json_annotation/json_annotation.dart';

part 'marking_response.g.dart';

@JsonSerializable()
class MarkingResponse {
  final String status;
  final int percent;

  const MarkingResponse({
    required this.status,
    required this.percent,
  });

  factory MarkingResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkingResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MarkingResponseToJson(this);
}
