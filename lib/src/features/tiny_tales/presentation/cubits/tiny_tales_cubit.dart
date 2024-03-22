import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/delete_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/upload_tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_state.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final CreateTinyTaleUseCase createTinyTaleUseCase;
  final LikeTinyTaleUseCase likeTinyTaleUseCase;
  final UnLikeTinyTaleUseCase unLikeTinyTaleUseCase;
  final DeleteTinyTaleUseCase deleteTinyTaleUseCase;
  final UploadTinyTaleImageUseCase uploadTinyTaleImageUseCase;

  TinyTalesCubit({
    required this.createTinyTaleUseCase,
    required this.likeTinyTaleUseCase,
    required this.unLikeTinyTaleUseCase,
    required this.deleteTinyTaleUseCase,
    required this.uploadTinyTaleImageUseCase,
  }) : super(const TinyTalesState.initial());

  void createTinyTale(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.createTinyTaleLoading());
    final result = await createTinyTaleUseCase.call(params);
    result.when(
      success: (tinyTaleDocument) =>
          emit(TinyTalesState.createTinyTaleSuccess(tinyTaleDocument)),
      error: (error) => emit(TinyTalesState.createTinyTaleError(
          error.failureMsg ?? AppStrings.unKnownError)),
    );
  }

  void likeTinyTale(String tinyTaleId) async {
    final result = await likeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.likeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.likeTinyTaleError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }

  void unlikeTinyTale(String tinyTaleId) async {
    final result = await unLikeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.unlikeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.unlikeTinyTaleError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }

  void deleteTinyTale(String tinyTaleId) async {
    emit(const TinyTalesState.deleteTinyTaleLoading());
    final result = await deleteTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.deleteTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.deleteTinyTaleError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }

  File? tinyTaleImage;

  void uploadTinyTaleImage(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.uploadTinyTaleImageLoading());
    final result = await uploadTinyTaleImageUseCase.call(tinyTaleImage);
    result.when(
      success: (taskSnapshot) =>
          _createTinyTaleWithTinyTaleImage(taskSnapshot, params),
      error: (error) => emit(
        TinyTalesState.uploadTinyTaleImageError(
            error.failureMsg ?? AppStrings.unKnownError),
      ),
    );
  }

  void _createTinyTaleWithTinyTaleImage(
      TaskSnapshot taskSnapshot, CreateTinyTaleParams params) {
    taskSnapshot.ref.getDownloadURL().then(
      (tinyTaleImageUrl) {
        createTinyTale(CreateTinyTaleParams(
          text: params.text,
          date: params.date,
          time: params.time,
          tinyTaleImage: tinyTaleImageUrl,
        ));

        tinyTaleImage = null;
        emit(TinyTalesState.uploadTinyTaleImageSuccess(tinyTaleImageUrl));
      },
    ).catchError((error) {
      emit(TinyTalesState.uploadTinyTaleImageError(error.toString()));
    });
  }
}
