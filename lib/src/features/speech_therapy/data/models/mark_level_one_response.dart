import 'package:json_annotation/json_annotation.dart';

part 'mark_level_one_response.g.dart';

@JsonSerializable()
class MarkLevelOneResponse {
  final String status;
  final int percent;

  const MarkLevelOneResponse({
    required this.status,
    required this.percent,
  });

  factory MarkLevelOneResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkLevelOneResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarkLevelOneResponseToJson(this);
}
