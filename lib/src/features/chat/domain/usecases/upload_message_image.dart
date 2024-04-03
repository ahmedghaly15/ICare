import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/chat/data/repositories/chat_repo.dart';

class UploadMessageImageUseCase
    implements FirebaseUseCase<TaskSnapshot, File?> {
  final ChatRepo _chatRepo;

  const UploadMessageImageUseCase(this._chatRepo);

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> call(File? params) async {
    return await _chatRepo.uploadMessageImage(params);
  }
}
