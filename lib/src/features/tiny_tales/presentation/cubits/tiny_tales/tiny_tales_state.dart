import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

part 'tiny_tales_state.freezed.dart';

@freezed
class TinyTalesState<T> with _$TinyTalesState<T> {
  const factory TinyTalesState.initial() = _TinyTalesInitial;
  const factory TinyTalesState.likeTinyTaleSuccess() = LikeTinyTaleSuccess;
  const factory TinyTalesState.likeTinyTaleError(String error) =
      LikeTinyTaleError;
  const factory TinyTalesState.unlikeTinyTaleSuccess() = UnlikeTinyTaleSuccess;
  const factory TinyTalesState.unlikeTinyTaleError(String error) =
      UnlikeTinyTaleError;
  const factory TinyTalesState.deleteTinyTaleLoading() = DeleteTinyTaleLoading;
  const factory TinyTalesState.deleteTinyTaleSuccess() = DeleteTinyTaleSuccess;
  const factory TinyTalesState.deleteTinyTaleError(String error) =
      DeleteTinyTaleError;
  const factory TinyTalesState.getTinyTalesLoading() = GetTinyTalesLoading;
  const factory TinyTalesState.getTinyTalesSuccess(List<TinyTale> data) =
      GetTinyTalesSuccess<T>;
  const factory TinyTalesState.getTinyTalesError(String error) =
      GetTinyTalesError;
  const factory TinyTalesState.bookmarkTinyTaleLoading() =
      BookmarkTinyTaleLoading;
  const factory TinyTalesState.bookmarkTinyTaleSuccess() =
      BookmarkTinyTaleSuccess;
  const factory TinyTalesState.bookmarkTinyTaleError(String error) =
      BookmarkTinyTaleError<T>;
  const factory TinyTalesState.unBookmarkTinyTaleLoading() =
      UnBookmarkTinyTaleLoading;
  const factory TinyTalesState.unBookmarkTinyTaleSuccess() =
      UnBookmarkTinyTaleSuccess;
  const factory TinyTalesState.unBookmarkTinyTaleError(String error) =
      UnBookmarkTinyTaleError<T>;
  const factory TinyTalesState.getBookmarkedTinyTalesLoading() =
      GetBookmarkedTinyTalesLoading;
  const factory TinyTalesState.getBookmarkedTinyTalesSuccess(
      List<TinyTale> data) = GetBookmarkedTinyTalesSuccess<T>;
  const factory TinyTalesState.getBookmarkedTinyTalesError(String error) =
      GetBookmarkedTinyTalesError<T>;
  const factory TinyTalesState.getPeopleWhoLikedLoading() =
      GetPeopleWhoLikedLoading;
  const factory TinyTalesState.getPeopleWhoLikedSuccess(
      List<ICareUser> peopleWhoLiked) = GetPeopleWhoLikedSuccess<T>;
  const factory TinyTalesState.getPeopleWhoLikedError(String error) =
      GetPeopleWhoLikedError<T>;
}
