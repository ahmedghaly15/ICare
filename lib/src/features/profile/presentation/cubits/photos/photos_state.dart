import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/tiny_tales/data/models/photo.dart';

part 'photos_state.freezed.dart';

@freezed
class PhotosState<T> with _$PhotosState<T> {
  const factory PhotosState.initial() = _PhotosInitial;
  const factory PhotosState.getUserPhotosLoading() = GetUserPhotosLoading;
  const factory PhotosState.getUserPhotosSuccess(List<Photo> data) =
      GetUserPhotosSuccess<T>;
  const factory PhotosState.getUserPhotosError(String error) =
      GetUserPhotosError<T>;
}
