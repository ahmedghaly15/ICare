import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class UploadTinyTaleImageUseCase
    implements FirebaseUseCase<TaskSnapshot, File?> {
  final TinyTalesRepo _tinyTalesRepo;

  const UploadTinyTaleImageUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> call(File? params) async {
    return await _tinyTalesRepo.uploadTinyTaleImage(params);
  }
}
