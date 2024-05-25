import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_bookmark_response.g.dart';
part 'delete_bookmark_response.freezed.dart';

@freezed
class DeleteBookmarkResponse with _$DeleteBookmarkResponse {
  const factory DeleteBookmarkResponse({
    required String message,
  }) = _DeleteBookmarkResponse;

  factory DeleteBookmarkResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteBookmarkResponseFromJson(json);
}
