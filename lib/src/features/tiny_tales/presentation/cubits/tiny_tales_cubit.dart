import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/delete_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/is_tiny_tale_liked_by_me.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/like_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/unlike_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/upload_tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales_state.dart';
import 'package:image_picker/image_picker.dart';

class TinyTalesCubit extends Cubit<TinyTalesState> {
  final CreateTinyTaleUseCase createTinyTaleUseCase;
  final LikeTinyTaleUseCase likeTinyTaleUseCase;
  final UnLikeTinyTaleUseCase unLikeTinyTaleUseCase;
  final DeleteTinyTaleUseCase deleteTinyTaleUseCase;
  final UploadTinyTaleImageUseCase uploadTinyTaleImageUseCase;
  final IsTinyTaleLikeByMeUseCase isTinyTaleLikedByMeUseCase;

  TinyTalesCubit({
    required this.createTinyTaleUseCase,
    required this.likeTinyTaleUseCase,
    required this.unLikeTinyTaleUseCase,
    required this.deleteTinyTaleUseCase,
    required this.uploadTinyTaleImageUseCase,
    required this.isTinyTaleLikedByMeUseCase,
  }) : super(const TinyTalesState.initial());

  void createTinyTale(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.createTinyTaleLoading());
    final result = await createTinyTaleUseCase.call(params);
    result.when(
      success: (tinyTaleDocument) =>
          emit(TinyTalesState.createTinyTaleSuccess(tinyTaleDocument)),
      error: (error) =>
          emit(TinyTalesState.createTinyTaleError(error.failureMsg ?? '')),
    );
  }

  void likeTinyTale(String tinyTaleId) async {
    final result = await likeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.likeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.likeTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  void unlikeTinyTale(String tinyTaleId) async {
    final result = await unLikeTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.unlikeTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.unlikeTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  void deleteTinyTale(String tinyTaleId) async {
    emit(const TinyTalesState.deleteTinyTaleLoading());
    final result = await deleteTinyTaleUseCase.call(tinyTaleId);
    result.when(
      success: (_) => emit(const TinyTalesState.deleteTinyTaleSuccess()),
      error: (error) => emit(
        TinyTalesState.deleteTinyTaleError(error.failureMsg ?? ''),
      ),
    );
  }

  File? tinyTaleImage;

  void pickTinyTaleImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateTinyTaleImage(pickedImage);
    }).catchError((error) {
      emit(TinyTalesState.pickTinyTaleImageError(error.toString()));
    });
  }

  void _updateTinyTaleImage(XFile? pickedImage) {
    if (pickedImage != null) {
      tinyTaleImage = File(pickedImage.path);
      emit(TinyTalesState.pickTinyTaleImageSuccess(tinyTaleImage!));
    }
  }

  void uploadTinyTaleImage(CreateTinyTaleParams params) async {
    emit(const TinyTalesState.uploadTinyTaleImageLoading());
    final result = await uploadTinyTaleImageUseCase.call(tinyTaleImage);
    result.when(
      success: (taskSnapshot) =>
          _createTinyTaleWithTinyTaleImage(taskSnapshot, params),
      error: (error) => emit(
        TinyTalesState.uploadTinyTaleImageError(error.failureMsg ?? ''),
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

  void removeTinyTaleImage() {
    tinyTaleImage = null;
    emit(const TinyTalesState.removeTinyTaleImage());
  }

  Stream<bool> isTinyTaleLikedByMe(String tinyTaleId) {
    return isTinyTaleLikedByMeUseCase.call(tinyTaleId);
  }
}
