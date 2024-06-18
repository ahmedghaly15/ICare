import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/constants.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';
import 'package:icare/src/features/profile/domain/usecases/update_password.dart';
import 'package:icare/src/features/profile/domain/usecases/update_user.dart';
import 'package:icare/src/features/profile/domain/usecases/update_user_email.dart';
import 'package:icare/src/features/profile/domain/usecases/upload_new_profile_image.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';
import 'package:icare/src/features/tiny_tales/presentation/cubits/tiny_tales/tiny_tales_cubit.dart';
import 'package:icare/src/features/user/presentation/cubit/user_cubit.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final UpdateUserEmailUseCase _updateUserEmailUseCase;
  final UpdateUserUseCase _updateUserUseCase;
  final UploadNewProfileImageUseCase _uploadNewProfileImageUseCase;
  final UpdatePasswordUseCase _updatePasswordUseCase;

  EditProfileCubit(
    this._updateUserEmailUseCase,
    this._updateUserUseCase,
    this._uploadNewProfileImageUseCase,
    this._updatePasswordUseCase,
  ) : super(const EditProfileState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> formKey;
  late final GlobalKey<FormState> changePassDialogFormKey;

  void Function()? updateUser(BuildContext context) {
    // Only return null if there is no new image and the controllers are empty or have no changes
    if (newProfileImage == null &&
        (_isControllerEmpty() || _controllersHaveNoChange())) {
      return null;
    } else {
      return () {
        if (formKey.currentState!.validate()) {
          AuthHelper.keyboardUnfocus(context);
          if (newProfileImage != null) {
            // If there's a new image, decide the update based on controller contents
            _uploadNewProfileImage(context,
                params: UpdateUserParams(
                  name: nameController.text.isNotEmpty
                      ? nameController.text
                      : null,
                  email: emailController.text.isNotEmpty
                      ? emailController.text
                      : null,
                ));
          } else {
            // No new image, update based on controller contents
            if (nameController.text.isNotEmpty &&
                emailController.text.isNotEmpty) {
              _updateUserFirestoreData(context,
                  params: UpdateUserParams(
                    name: nameController.text,
                    email: emailController.text,
                  ));
            } else if (nameController.text.isNotEmpty) {
              _updateUserFirestoreData(context,
                  params: UpdateUserParams(
                    name: nameController.text,
                  ));
            } else if (emailController.text.isNotEmpty) {
              _updateUserFirestoreData(context,
                  params: UpdateUserParams(
                    email: emailController.text,
                  ));
            }
          }
        }
      };
    }
  }

  void updatePassword(BuildContext context) {
    if (changePassDialogFormKey.currentState!.validate()) {
      AuthHelper.keyboardUnfocus(context);
      _updatePassword();
    }
  }

  void _updatePassword() async {
    emit(const EditProfileState.updatePasswordLoading());
    final result = await _updatePasswordUseCase.call(passwordController.text);
    result.when(
      success: (data) => emit(const EditProfileState.updatePasswordSuccess()),
      error: (error) =>
          emit(EditProfileState.updatePasswordError(error.failureMsg ?? '')),
    );
  }

  bool _controllersHaveNoChange() =>
      (nameController.text == Constants.currentUser!.name &&
          emailController.text == Constants.currentUser!.email);

  bool _isControllerEmpty() =>
      (nameController.text.isEmpty || emailController.text.isEmpty);

  void _showVerificationEmailSentDialog(BuildContext context) {
    context.showICareDialog(
      state: ICareDialogStates.success,
      message:
          'Verification email has been sent to this email. Please verify your email to change it.',
    );
  }

  Future<void> _updateUserEmail(
    BuildContext context, {
    required UpdateUserParams params,
  }) async {
    final result = await _updateUserEmailUseCase(emailController.text);
    result.when(
        success: (_) async {
          _showVerificationEmailSentDialog(context);
          await _handleUpdateUserResult(params);
        },
        error: (error) =>
            emit(EditProfileState.editProfileError(error.failureMsg ?? '')));
  }

  Future<void> _updateUserFirestoreData(
    BuildContext context, {
    required UpdateUserParams params,
  }) async {
    if (params.email != null) {
      await _updateUserEmail(context, params: params);
    } else {
      await _handleUpdateUserResult(params);
    }
  }

  Future<void> _handleUpdateUserResult(UpdateUserParams params) async {
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

  bool isPassVisible = true;
  void changePasswordVisibility() {
    isPassVisible = !isPassVisible;
    emit(EditProfileState.convertBoolValue(isPassVisible));
  }

  void _uploadNewProfileImage(
    BuildContext context, {
    required UpdateUserParams params,
  }) async {
    emit(const EditProfileState.uploadNewProfileImageLoading());
    final result = await _uploadNewProfileImageUseCase.call(newProfileImage!);
    result.when(
      success: (taskSnapshot) => _updateUserImage(
        context,
        taskSnapshot: taskSnapshot,
        params: params,
      ),
      error: (error) => emit(
          EditProfileState.uploadNewProfileImageError(error.failureMsg ?? '')),
    );
  }

  void _updateUserImage(
    BuildContext context, {
    required TaskSnapshot taskSnapshot,
    required UpdateUserParams params,
  }) {
    taskSnapshot.ref.getDownloadURL().then((value) {
      _updateUserFirestoreData(context,
          params: UpdateUserParams(
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
    emit(EditProfileState.setNewNameTextValue(nameController.text));
  }

  void setNewEmailTextValue(String text) {
    emailController.text = text;
    emit(EditProfileState.setNewEmailTextValue(emailController.text));
  }

  void setNewPassTextValue(String text) {
    passwordController.text = text;
    emit(EditProfileState.setNewPassTextValue(passwordController.text));
  }

  void handleEditProfileState(
    EditProfileState<dynamic> state,
    BuildContext context,
  ) {
    state.whenOrNull(
      editProfileSuccess: () {
        _handleSuccessStates(context);
      },
      uploadNewProfileImageSuccess: (imageUrl) {
        _handleSuccessStates(context);
      },
      editProfileError: (error) {
        context.showICareDialogError(error);
      },
      uploadNewProfileImageError: (error) {
        context.showICareDialogError(error);
      },
    );
  }

  void _handleSuccessStates(BuildContext context) {
    getIt.get<CacheHelper>().deleteSecuredString(AppStrings.cachedUser).then(
      (_) {
        debugPrint('*********** DELETE CACHED USER ***********');
        context.read<UserCubit>().getUserData().then(
          (value) {
            context.read<TinyTalesCubit>().getBookmarkedTinyTales();
          },
        );
      },
    );
  }

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    changePassDialogFormKey = GlobalKey<FormState>();
    _initControllers();
    _assignValuesToControllers();
  }

  void _initControllers() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void _assignValuesToControllers() {
    nameController.text = Constants.currentUser!.name!;
    emailController.text = Constants.currentUser!.email!;
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
