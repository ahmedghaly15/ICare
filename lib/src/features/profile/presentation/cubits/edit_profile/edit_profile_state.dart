import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState<T> with _$EditProfileState<T> {
  const factory EditProfileState.initial() = _EditProfileInitial;
  const factory EditProfileState.editProfileLoading() = EditProfileLoading;
  const factory EditProfileState.editProfileSuccess() = EditProfileSuccess;
  const factory EditProfileState.editProfileError(String error) =
      EditProfileError<T>;
}
