import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';

class UploadCommentImageUseCase
    implements FirebaseUseCase<TaskSnapshot, File?> {
  final CommentsRepo _commentsRepo;

  const UploadCommentImageUseCase(this._commentsRepo);

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> call(File? params) async {
    return await _commentsRepo.uploadCommentImage(params);
  }
}
