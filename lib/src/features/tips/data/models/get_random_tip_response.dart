import 'package:json_annotation/json_annotation.dart';

part 'get_random_tip_response.g.dart';

@JsonSerializable()
class GetRandomTipResponse {
  @JsonKey(name: 'what_to_say')
  final String whatToSay;
  final String topic, info;

  const GetRandomTipResponse({
    required this.whatToSay,
    required this.topic,
    required this.info,
  });

  factory GetRandomTipResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRandomTipResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetRandomTipResponseToJson(this);
}
