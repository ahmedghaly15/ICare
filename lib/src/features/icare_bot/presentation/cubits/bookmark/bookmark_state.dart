import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/icare_bot/data/models/bookmark_icare_bot_message_response.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState<T> with _$BookmarkState<T> {
  const factory BookmarkState.initial() = _BookmarkInitial;
  const factory BookmarkState.bookmarkICareBotMessageLoading() =
      BookmarkICareBotMessageLoading;
  const factory BookmarkState.bookmarkICareBotMessageSuccess(
      BookmarkICareBotMessageResponse data) = BookmarkICareBotMessageSuccess<T>;
  const factory BookmarkState.bookmarkICareBotMessageError(String message) =
      BookmarkICareBotMessageError;
}
