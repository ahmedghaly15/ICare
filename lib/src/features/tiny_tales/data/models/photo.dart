import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  @JsonKey(name: 'IMAGE PATH')
  final String? imagePath;
  @JsonKey(name: 'id')
  final String? imageId;

  const Photo({
    this.imagePath,
    this.imageId,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
