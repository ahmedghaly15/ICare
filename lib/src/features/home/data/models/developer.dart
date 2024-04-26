import 'package:json_annotation/json_annotation.dart';

part 'developer.g.dart';

@JsonSerializable()
class Developer {
  final String name;
  final String title;
  @JsonKey(name: 'GitHub')
  final String? gitHub;
  @JsonKey(name: 'LinkedIn')
  final String? linkedIn;

  const Developer({
    required this.name,
    required this.title,
    this.gitHub,
    this.linkedIn,
  });

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}
