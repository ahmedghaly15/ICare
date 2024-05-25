import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_result_response.g.dart';
part 'last_result_response.freezed.dart';

@freezed
class LastResultResponse with _$LastResultResponse {
  const factory LastResultResponse({
    String? feeling,
    String? photo,
  }) = _LastResultResponse;

  factory LastResultResponse.fromJson(Map<String, dynamic> json) =>
      _$LastResultResponseFromJson(json);
}
