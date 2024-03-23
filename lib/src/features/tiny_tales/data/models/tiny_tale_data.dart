import 'package:json_annotation/json_annotation.dart';

part 'tiny_tale_data.g.dart';

@JsonSerializable()
class TinyTaleData {
  final String? tinyTaleId;
  final String? time;
  final String? date;
  final String? text;
  final String? tinyTaleImage;

  const TinyTaleData({
    this.tinyTaleId,
    this.time,
    this.date,
    this.text,
    this.tinyTaleImage,
  });

  factory TinyTaleData.fromJson(Map<String, dynamic> json) =>
      _$TinyTaleDataFromJson(json);

  Map<String, dynamic> toJson() => _$TinyTaleDataToJson(this);
}
