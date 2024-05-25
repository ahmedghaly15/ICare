import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.deletePhotoLoading() = _DeletePhotoLoading;
  const factory ProfileState.deletePhotoSuccess() = _DeletePhotoSuccess;
  const factory ProfileState.deletePhotoError(String error) =
      DeletePhotoError<T>;
}
