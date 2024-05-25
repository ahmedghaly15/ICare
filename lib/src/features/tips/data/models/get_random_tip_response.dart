import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_random_tip_response.g.dart';
part 'get_random_tip_response.freezed.dart';

@freezed
class GetRandomTipResponse with _$GetRandomTipResponse {
  const factory GetRandomTipResponse({
    @JsonKey(name: 'what_to_say') required String whatToSay,
    required String topic,
    required String info,
  }) = _GetRandomTipResponse;

  factory GetRandomTipResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRandomTipResponseFromJson(json);
}
