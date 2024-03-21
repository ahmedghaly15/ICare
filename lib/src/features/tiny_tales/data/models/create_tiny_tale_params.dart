import 'package:json_annotation/json_annotation.dart';

part 'create_tiny_tale_params.g.dart';

@JsonSerializable()
class CreateTinyTaleParams {
  final String date;
  final String time;
  final String text;
  final String? tinyTaleImage;

  const CreateTinyTaleParams({
    required this.text,
    required this.date,
    required this.time,
    this.tinyTaleImage,
  });

  factory CreateTinyTaleParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTinyTaleParamsFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTinyTaleParamsToJson(this);
}
