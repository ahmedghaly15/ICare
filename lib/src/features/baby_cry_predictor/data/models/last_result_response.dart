import 'package:json_annotation/json_annotation.dart';

part 'last_result_response.g.dart';

@JsonSerializable()
class LastResultResponse {
  final String? feeling, photo;

  const LastResultResponse({
    this.feeling,
    this.photo,
  });

  factory LastResultResponse.fromJson(Map<String, dynamic> json) =>
      _$LastResultResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LastResultResponseToJson(this);
}
