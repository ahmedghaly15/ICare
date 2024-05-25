import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.g.dart';
part 'photo.freezed.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: 'IMAGE PATH') String? imagePath,
    @JsonKey(name: 'id') String? imageId,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
