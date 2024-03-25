import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';
import 'package:icare/src/features/icare_bot/data/models/delete_bookmark_response.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState<T> with _$BookmarkState<T> {
  const factory BookmarkState.initial() = _BookmarkInitial;
  const factory BookmarkState.bookmarkICareBotMessageLoading() =
      BookmarkICareBotMessageLoading;
  const factory BookmarkState.bookmarkICareBotMessageSuccess(
      BookmarkICareBotMessageResponse data) = BookmarkICareBotMessageSuccess<T>;
  const factory BookmarkState.bookmarkICareBotMessageError(String error) =
      BookmarkICareBotMessageError;
  const factory BookmarkState.retrieveICareBotBookmarksLoading() =
      RetrieveICareBotBookmarksLoading;
  const factory BookmarkState.retrieveICareBotBookmarksSuccess(
          List<BookmarkICareBotMessageResponse> data) =
      RetrieveICareBotBookmarksSuccess<T>;
  const factory BookmarkState.retrieveICareBotBookmarksError(String error) =
      RetrieveICareBotBookmarksError;
  const factory BookmarkState.deleteBookmarkLoading() = DeleteBookmarkLoading;
  const factory BookmarkState.deleteBookmarkSuccess(
      DeleteBookmarkResponse data) = DeleteBookmarkSuccess<T>;
  const factory BookmarkState.deleteBookmarkError(String error) =
      DeleteBookmarkError;
}
