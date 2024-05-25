import 'package:freezed_annotation/freezed_annotation.dart';

part 'baby_cry_predictor_class.g.dart';
part 'baby_cry_predictor_class.freezed.dart';

@freezed
class BabyCryPredictorClass with _$BabyCryPredictorClass {
  const factory BabyCryPredictorClass({
    @JsonKey(name: 'Class') required String className,
    required String audio,
    required String hint,
  }) = _BabyCryPredictorClass;

  factory BabyCryPredictorClass.fromJson(Map<String, dynamic> json) =>
      _$BabyCryPredictorClassFromJson(json);
}
