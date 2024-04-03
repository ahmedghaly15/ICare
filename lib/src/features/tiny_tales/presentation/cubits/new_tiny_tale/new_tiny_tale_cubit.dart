import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/create_tiny_tale.dart';
import 'package:icare/src/features/tiny_tales/domain/usecases/upload_tiny_tale_image.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/new_tiny_tale/new_tiny_tale_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class NewTinyTaleCubit extends Cubit<NewTinyTaleState> {
  final CreateTinyTaleUseCase createTinyTaleUseCase;
  final UploadTinyTaleImageUseCase uploadTinyTaleImageUseCase;

  NewTinyTaleCubit({
    required this.createTinyTaleUseCase,
    required this.uploadTinyTaleImageUseCase,
  }) : super(const NewTinyTaleState.initial()) {
    createNewTinyTaleController = TextEditingController();
  }

  late final TextEditingController createNewTinyTaleController;

  void _createTinyTale(CreateTinyTaleParams params) async {
    emit(const NewTinyTaleState.createTinyTaleLoading());
    final result = await createTinyTaleUseCase.call(params);
    result.when(
      success: (tinyTaleDocument) {
        emit(NewTinyTaleState.createTinyTaleSuccess(tinyTaleDocument));
      },
      error: (error) {
        emit(NewTinyTaleState.createTinyTaleError(error.failureMsg ?? ''));
      },
    );
  }

  void Function()? publishNewTinyTale(BuildContext context) {
    return tinyTaleImage == null && createNewTinyTaleController.text.isEmpty
        ? null
        : () {
            AuthHelper.keyboardUnfocus(context);

            if (tinyTaleImage == null &&
                createNewTinyTaleController.text.isNotEmpty) {
              _createTinyTale(CreateTinyTaleParams(
                context: context,
                text: createNewTinyTaleController.text,
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
              ));
            } else if (tinyTaleImage != null &&
                createNewTinyTaleController.text.isEmpty) {
              _uploadTinyTaleImage(CreateTinyTaleParams(
                context: context,
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
              ));
            } else if (tinyTaleImage != null &&
                createNewTinyTaleController.text.isNotEmpty) {
              _uploadTinyTaleImage(CreateTinyTaleParams(
                context: context,
                text: createNewTinyTaleController.text,
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
              ));
            }
          };
  }

  File? tinyTaleImage;

  void pickTinyTaleImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateTinyTaleImage(pickedImage);
    }).catchError((error) {
      emit(NewTinyTaleState.pickTinyTaleImageError(error.toString()));
    });
  }

  void _updateTinyTaleImage(XFile? pickedImage) {
    if (pickedImage != null) {
      tinyTaleImage = File(pickedImage.path);

      emit(NewTinyTaleState.pickTinyTaleImageSuccess(tinyTaleImage!));
    }
  }

  void _uploadTinyTaleImage(CreateTinyTaleParams params) async {
    emit(const NewTinyTaleState.uploadTinyTaleImageLoading());
    final result = await uploadTinyTaleImageUseCase.call(tinyTaleImage);
    result.when(
      success: (taskSnapshot) =>
          _createTinyTaleWithTinyTaleImage(taskSnapshot, params),
      error: (error) => emit(
        NewTinyTaleState.uploadTinyTaleImageError(error.failureMsg ?? ''),
      ),
    );
  }

  void _createTinyTaleWithTinyTaleImage(
      TaskSnapshot taskSnapshot, CreateTinyTaleParams params) {
    taskSnapshot.ref.getDownloadURL().then(
      (tinyTaleImageUrl) {
        _createTinyTale(CreateTinyTaleParams(
          context: params.context,
          text: params.text,
          date: params.date,
          time: params.time,
          tinyTaleImage: tinyTaleImageUrl,
        ));

        removeTinyTaleImage();
        emit(NewTinyTaleState.uploadTinyTaleImageSuccess(tinyTaleImageUrl));
      },
    ).catchError((error) {
      emit(NewTinyTaleState.uploadTinyTaleImageError(error.toString()));
    });
  }

  void removeTinyTaleImage() {
    tinyTaleImage = null;
    emit(const NewTinyTaleState.removeTinyTaleImage());
  }

  void setNewTinyTaleText(String text) {
    emit(NewTinyTaleState.setNewTextValue(text));
  }

  void handleCreateNewTinyTaleStates(
    NewTinyTaleState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      createTinyTaleSuccess: (data) {
        createNewTinyTaleController.clear();

        context.read<TinyTalesCubit>().getTinyTales().then((value) {
          context.maybePop();
        });
      },
      createTinyTaleError: (error) {
        ShowICareDialog.showICareDialogError(context, error);
      },
    );
  }

  @override
  Future<void> close() {
    createNewTinyTaleController.dispose();
    return super.close();
  }
}
