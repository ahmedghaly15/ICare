import 'package:json_annotation/json_annotation.dart';

part 'mark_response.g.dart';

@JsonSerializable()
class MarkResponse {
  final String status;
  final double percent;
  final int next;

  const MarkResponse({
    required this.status,
    required this.percent,
    required this.next,
  });

  factory MarkResponse.fromJson(Map<String, dynamic> json) =>
      _$MarkResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MarkResponseToJson(this);
}
