import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer.g.dart';
part 'developer.freezed.dart';

@freezed
class Developer with _$Developer {
  const factory Developer({
    required String name,
    required String title,
    @JsonKey(name: 'GitHub') String? gitHub,
    @JsonKey(name: 'LinkedIn') String? linkedIn,
  }) = _Developer;

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
}
