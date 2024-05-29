import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState<T> with _$UserState<T> {
  const factory UserState.initial() = _UserInitial;
  const factory UserState.getUserDataLoading() = GetUserDataLoading;
  const factory UserState.getUserData(ICareUser user) = GetUserDataSuccess<T>;
  const factory UserState.getUserDataError(String error) = GetUserDataError<T>;
  const factory UserState.getFollowingLoading() = GetFollowingLoading;
  const factory UserState.getFollowing(List<ICareUser> users) =
      GetFollowingSuccess<T>;
  const factory UserState.getFollowingError(String error) =
      GetFollowingError<T>;
  const factory UserState.getFollowersLoading() = GetFollowersLoading;
  const factory UserState.getFollowers(List<ICareUser> users) =
      GetFollowersSuccess<T>;
  const factory UserState.getFollowersError(String error) =
      GetFollowersError<T>;
  const factory UserState.followSuccess() = FollowSuccess;
  const factory UserState.followError(String error) = FollowError<T>;
  const factory UserState.unFollowSuccess() = UnFollowSuccess;
  const factory UserState.unFollowError(String error) = UnFollowError<T>;
  const factory UserState.signOutSuccess() = SignOutSuccess;
  const factory UserState.signOutError(String error) = SignOutError<T>;
}
