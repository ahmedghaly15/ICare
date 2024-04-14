import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/profile/data/repositories/edit_profile_repo.dart';

class UploadNewProfileImageUseCase
    implements FirebaseUseCase<TaskSnapshot, File?> {
  final EditProfileRepo _editProfileRepo;

  const UploadNewProfileImageUseCase(this._editProfileRepo);

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> call(File? params) async {
    return _editProfileRepo.uploadNewProfileImage(params);
  }
}
