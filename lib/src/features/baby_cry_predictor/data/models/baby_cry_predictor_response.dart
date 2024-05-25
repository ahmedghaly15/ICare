import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_cry_predictor_response.g.dart';
part 'baby_cry_predictor_response.freezed.dart';

@freezed
class BabyCryPredictorResponse with _$BabyCryPredictorResponse {
  const factory BabyCryPredictorResponse({
    required String feeling,
    required String photo,
  }) = _BabyCryPredictorResponse;

  factory BabyCryPredictorResponse.fromJson(Map<String, dynamic> json) =>
      _$BabyCryPredictorResponseFromJson(json);
}
