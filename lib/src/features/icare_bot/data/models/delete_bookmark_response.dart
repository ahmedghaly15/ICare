import 'package:json_annotation/json_annotation.dart';

part 'delete_bookmark_response.g.dart';

@JsonSerializable()
class DeleteBookmarkResponse {
  final String message;

  const DeleteBookmarkResponse({required this.message});

  factory DeleteBookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteBookmarkResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteBookmarkResponseToJson(this);
}
