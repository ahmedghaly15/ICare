import 'package:freezed_annotation/freezed_annotation.dart';

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
}
