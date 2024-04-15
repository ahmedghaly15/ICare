import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/profile/data/datasources/edit_profile_datasource.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';

class EditProfileRepo {
  final EditProfileDatasource _editProfileDatasource;

  const EditProfileRepo(this._editProfileDatasource);

  Future<FirebaseRequestResult<void>> updateUser(UpdateUserParams params) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _editProfileDatasource.updateUser(params),
    );
  }

  Future<FirebaseRequestResult<TaskSnapshot>> uploadNewProfileImage(
    File? newProfileImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async =>
          await _editProfileDatasource.uploadNewProfileImage(newProfileImage),
    );
  }

  Future<FirebaseRequestResult<void>> updatePassword(String password) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _editProfileDatasource.updatePassword(password),
    );
  }
}
