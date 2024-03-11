import 'package:json_annotation/json_annotation.dart';

part 'baby_cry_predictor_response.g.dart';

@JsonSerializable()
class BabyCryPredictorResponse {
  final String feeling, photo;

  const BabyCryPredictorResponse({
    required this.feeling,
    required this.photo,
  });

  factory BabyCryPredictorResponse.fromJson(Map<String, dynamic> json) =>
      _$BabyCryPredictorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BabyCryPredictorResponseToJson(this);
}
