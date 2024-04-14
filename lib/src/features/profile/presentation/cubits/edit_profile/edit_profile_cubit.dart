import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';
import 'package:icare/src/features/profile/domain/usecases/update_user.dart';
import 'package:icare/src/features/profile/domain/usecases/upload_new_profile_image.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final UpdateUserUseCase _updateUserUseCase;
  final UploadNewProfileImageUseCase _uploadNewProfileImageUseCase;

  EditProfileCubit(
    this._updateUserUseCase,
    this._uploadNewProfileImageUseCase,
  ) : super(const EditProfileState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> formKey;

  void Function()? updateUser(BuildContext context) {
    return newProfileImage == null && _isControllerEmpty()
        ? null
        : () {
            AuthHelper.keyboardUnfocus(context);
            if (newProfileImage == null &&
                (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty)) {
              _updateUser(UpdateUserParams(
                name: nameController.text,
                email: emailController.text,
              ));
            } else if (newProfileImage == null &&
                (nameController.text.isNotEmpty &&
                    emailController.text.isEmpty)) {
              _updateUser(UpdateUserParams(
                name: nameController.text,
              ));
            } else if (newProfileImage == null &&
                (nameController.text.isEmpty &&
                    emailController.text.isNotEmpty)) {
              _updateUser(UpdateUserParams(
                email: emailController.text,
              ));
            } else if (newProfileImage != null &&
                (nameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty)) {
              _uploadNewProfileImage(UpdateUserParams(
                name: nameController.text,
                email: emailController.text,
              ));
            } else if (newProfileImage != null &&
                (nameController.text.isNotEmpty &&
                    emailController.text.isEmpty)) {
              _uploadNewProfileImage(UpdateUserParams(
                name: nameController.text,
              ));
            } else if (newProfileImage != null &&
                (nameController.text.isEmpty &&
                    emailController.text.isNotEmpty)) {
              _uploadNewProfileImage(UpdateUserParams(
                email: emailController.text,
              ));
            }
          };
  }

  bool _isControllerEmpty() =>
      (nameController.text.isEmpty || emailController.text.isEmpty);

  Future<void> _updateUser(UpdateUserParams params) async {
    emit(const EditProfileState.editProfileLoading());
    final result = await _updateUserUseCase.call(params);
    result.when(
      success: (data) => emit(const EditProfileState.editProfileSuccess()),
      error: (error) =>
          emit(EditProfileState.editProfileError(error.failureMsg ?? '')),
    );
  }

  File? newProfileImage;

  void pickNewProfileImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateNewProfileImage(pickedImage);
    }).catchError((error) {
      emit(EditProfileState.pickNewProfileImageError(error.toString()));
    });
  }

  void _updateNewProfileImage(XFile? pickedImage) {
    if (pickedImage != null) {
      newProfileImage = File(pickedImage.path);
      emit(EditProfileState.pickNewProfileImageSuccess(newProfileImage!));
    }
  }

  void _uploadNewProfileImage(UpdateUserParams params) async {
    emit(const EditProfileState.uploadNewProfileImageLoading());
    final result = await _uploadNewProfileImageUseCase.call(newProfileImage!);
    result.when(
      success: (taskSnapshot) => _updateUserImage(taskSnapshot, params),
      error: (error) => emit(
          EditProfileState.uploadNewProfileImageError(error.failureMsg ?? '')),
    );
  }

  void _updateUserImage(TaskSnapshot taskSnapshot, UpdateUserParams params) {
    taskSnapshot.ref.getDownloadURL().then((value) {
      _updateUser(UpdateUserParams(
        name: params.name,
        email: params.email,
        profileImage: value,
      ));
      emit(EditProfileState.uploadNewProfileImageSuccess(value));
    }).catchError((error) {
      emit(EditProfileState.uploadNewProfileImageError(error.toString()));
    });
  }

  void setNewNameTextValue(String text) {
    nameController.text = text;
    emit(EditProfileState.setNewNameTextValue(text));
  }

  void setNewEmailTextValue(String text) {
    emailController.text = text;
    emit(EditProfileState.setNewEmailTextValue(text));
  }

  void setNewPassTextValue(String text) {
    passwordController.text = text;
    emit(EditProfileState.setNewPassTextValue(text));
  }

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    _initControllers();
    _assignValuesToControllers();
  }

  void _initControllers() {
    nameController = TextEditingController();
    emailController = TextEditingController();
  }

  void _assignValuesToControllers() {
    nameController.text = Helper.currentUser!.name!;
    emailController.text = Helper.currentUser!.email!;
    passwordController = TextEditingController();
  }

  void _disposeController() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Future<void> close() {
    _disposeController();
    return super.close();
  }
}
