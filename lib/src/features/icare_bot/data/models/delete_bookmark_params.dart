import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_bookmark_params.freezed.dart';

@freezed
class DeleteBookmarkParams with _$DeleteBookmarkParams {
  const factory DeleteBookmarkParams({
    required String userId,
    required String bookmarkId,
  }) = _DeleteBookmarkParams;
}
