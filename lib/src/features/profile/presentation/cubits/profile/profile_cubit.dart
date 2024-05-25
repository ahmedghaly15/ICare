import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/profile/domain/usecases/delete_photo_from_photos.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final DeletePhotoFromPhotosUseCase _deletePhotoFromPhotosUseCase;

  ProfileCubit(
    this._deletePhotoFromPhotosUseCase,
  ) : super(const ProfileState.initial());

  void deletePhoto(String imageId) async {
    emit(const ProfileState.deletePhotoLoading());
    final result = await _deletePhotoFromPhotosUseCase(imageId);
    result.when(
      success: (_) => emit(const ProfileState.deletePhotoSuccess()),
      error: (error) =>
          emit(ProfileState.deletePhotoError(error.failureMsg ?? '')),
    );
  }
}
