import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState<T> with _$EditProfileState<T> {
  const factory EditProfileState.initial() = _EditProfileInitial;
  const factory EditProfileState.editProfileLoading() = EditProfileLoading;
  const factory EditProfileState.editProfileSuccess() = EditProfileSuccess;
  const factory EditProfileState.editProfileError(String error) =
      EditProfileError<T>;
  const factory EditProfileState.pickNewProfileImageSuccess(
      File tinyTaleImage) = PickNewProfileImageSuccess<T>;
  const factory EditProfileState.pickNewProfileImageError(String error) =
      PickNewProfileImageError<T>;
  const factory EditProfileState.uploadNewProfileImageLoading() =
      UploadNewProfileImageLoading;
  const factory EditProfileState.uploadNewProfileImageSuccess(String imageUrl) =
      UploadNewProfileImageSuccess<T>;
  const factory EditProfileState.uploadNewProfileImageError(String error) =
      UploadNewProfileImageError<T>;
  const factory EditProfileState.updatePasswordLoading() =
      UpdatePasswordLoading;
  const factory EditProfileState.updatePasswordSuccess() =
      UpdatePasswordSuccess;
  const factory EditProfileState.updatePasswordError(String error) =
      UpdatePasswordError<T>;
  const factory EditProfileState.setNewNameTextValue(String text) =
      SetNewNameTextValue<T>;
  const factory EditProfileState.setNewEmailTextValue(String text) =
      SetNewEmailTextValue<T>;
  const factory EditProfileState.setNewPassTextValue(String text) =
      SetNewPassTextValue<T>;
}
