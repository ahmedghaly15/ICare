import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_tiny_tale_state.freezed.dart';

@freezed
class NewTinyTaleState<T> with _$NewTinyTaleState<T> {
  const factory NewTinyTaleState.initial() = _NewTinyTaleInitial;
  const factory NewTinyTaleState.createTinyTaleLoading() =
      CreateTinyTaleLoading;
  const factory NewTinyTaleState.createTinyTaleSuccess(T data) =
      CreateTinyTaleSuccess;
  const factory NewTinyTaleState.createTinyTaleError(String error) =
      CreateTinyTaleError;

  const factory NewTinyTaleState.uploadTinyTaleImageLoading() =
      UploadTinyTaleImageLoading;
  const factory NewTinyTaleState.uploadTinyTaleImageSuccess(String imageUrl) =
      UploadTinyTaleImageSuccess<T>;
  const factory NewTinyTaleState.uploadTinyTaleImageError(String error) =
      UploadTinyTaleImageError;

  const factory NewTinyTaleState.removeTinyTaleImage() = RemoveTinyTaleImage;
  const factory NewTinyTaleState.pickTinyTaleImageSuccess(File tinyTaleImage) =
      PickTinyTaleImageSuccess<T>;
  const factory NewTinyTaleState.pickTinyTaleImageError(String error) =
      PickTinyTaleImageError;
  const factory NewTinyTaleState.setNewTextValue(String text) = SetNewTextValue;
}
