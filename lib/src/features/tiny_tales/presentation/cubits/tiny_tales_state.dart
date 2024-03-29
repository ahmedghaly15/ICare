import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

part 'tiny_tales_state.freezed.dart';

@freezed
class TinyTalesState<T> with _$TinyTalesState<T> {
  const factory TinyTalesState.initial() = _TinyTalesInitial;
  const factory TinyTalesState.createTinyTaleLoading() = CreateTinyTaleLoading;
  const factory TinyTalesState.createTinyTaleSuccess(T data) =
      CreateTinyTaleSuccess;
  const factory TinyTalesState.createTinyTaleError(String error) =
      CreateTinyTaleError;
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
  const factory TinyTalesState.uploadTinyTaleImageLoading() =
      UploadTinyTaleImageLoading;
  const factory TinyTalesState.uploadTinyTaleImageSuccess(String imageUrl) =
      UploadTinyTaleImageSuccess<T>;
  const factory TinyTalesState.uploadTinyTaleImageError(String error) =
      UploadTinyTaleImageError;

  const factory TinyTalesState.removeTinyTaleImage() = RemoveTinyTaleImage;
  const factory TinyTalesState.pickTinyTaleImageSuccess(File tinyTaleImage) =
      PickTinyTaleImageSuccess<T>;
  const factory TinyTalesState.pickTinyTaleImageError(String error) =
      PickTinyTaleImageError;

  const factory TinyTalesState.getTinyTalesLoading() = GetTinyTalesLoading;
  const factory TinyTalesState.getTinyTalesSuccess(List<TinyTale> data) =
      GetTinyTalesSuccess<T>;
  const factory TinyTalesState.getTinyTalesError(String error) =
      GetTinyTalesError;

  const factory TinyTalesState.setNewTextValue(String text) = _SetNewTextValue;
  const factory TinyTalesState.getImageSize(Size imageSize) = _GetImageSize;
}
