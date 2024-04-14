import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/profile/domain/usecases/get_user_photos.dart';
import 'package:icare/src/features/profile/presentation/cubits/photos/photos_state.dart';

class PhotosCubit extends Cubit<PhotosState> {
  final GetUserPhotosUseCase _getUserPhotosUseCase;

  PhotosCubit(this._getUserPhotosUseCase) : super(const PhotosState.initial());

  void getUserPhotos(String uId) async {
    emit(const PhotosState.getUserPhotosLoading());
    final result = await _getUserPhotosUseCase(uId);
    result.when(
      success: (data) => emit(PhotosState.getUserPhotosSuccess(data)),
      error: (error) =>
          emit(PhotosState.getUserPhotosError(error.failureMsg ?? '')),
    );
  }
}
