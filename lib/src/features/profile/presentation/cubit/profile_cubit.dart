import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/features/profile/domain/usecases/get_user_photos.dart';
import 'package:icare/src/features/profile/domain/usecases/get_user_tiny_tales.dart';
import 'package:icare/src/features/profile/presentation/cubit/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetUserTinyTalesUseCase _getUserTinyTalesUseCase;
  final GetUserPhotosUseCase _getUserPhotosUseCase;

  ProfileCubit(
    this._getUserTinyTalesUseCase,
    this._getUserPhotosUseCase,
  ) : super(const ProfileState.initial());

  void getUserTinyTales() async {
    emit(const ProfileState.getUserTinyTalesLoading());
    final result = await _getUserTinyTalesUseCase(const NoParams());
    result.when(
      success: (data) => emit(ProfileState.getUserTinyTalesSuccess(data)),
      error: (error) =>
          emit(ProfileState.getUserTinyTalesError(error.failureMsg ?? '')),
    );
  }

  void getUserPhotos() async {
    emit(const ProfileState.getUserPhotosLoading());
    final result = await _getUserPhotosUseCase(const NoParams());
    result.when(
      success: (data) => emit(ProfileState.getUserPhotosSuccess(data)),
      error: (error) =>
          emit(ProfileState.getUserPhotosError(error.failureMsg ?? '')),
    );
  }
}
