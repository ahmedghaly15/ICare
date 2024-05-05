import 'package:json_annotation/json_annotation.dart';

part 'baby_cry_predictor_class.g.dart';

@JsonSerializable()
class BabyCryPredictorClass {
  @JsonKey(name: 'Class')
  final String className;
  final String audio, hint;

  const BabyCryPredictorClass({
    required this.className,
    required this.audio,
    required this.hint,
  });

  factory BabyCryPredictorClass.fromJson(Map<String, dynamic> json) =>
      _$BabyCryPredictorClassFromJson(json);
  Map<String, dynamic> toJson() => _$BabyCryPredictorClassToJson(this);
}
