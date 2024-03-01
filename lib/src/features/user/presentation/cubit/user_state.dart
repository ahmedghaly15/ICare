import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState<T> with _$UserState<T> {
  const factory UserState.initial() = _UserInitial;
  const factory UserState.getUserDataLoading() = GetUserDataLoading;
  const factory UserState.getUserData(ICareUser user) = GetUserDataSuccess<T>;
  const factory UserState.getUserDataError(String error) = GetUserDataError;
}
