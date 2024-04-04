import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.searchUsersLoading() = SearchUsersLoading;
  const factory SearchState.searchUsersSuccess(List<ICareUser> searchResult) =
      SearchUsersSuccess<T>;
  const factory SearchState.searchUsersError(String error) =
      SearchUsersError<T>;
  const factory SearchState.setNewTextValue(String newValue) =
      SetNewTextValue<T>;
}
