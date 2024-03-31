import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';

class UploadCommentReplyImageUseCase
    implements FirebaseUseCase<TaskSnapshot, File?> {
  final CommentRepliesRepo _commentRepliesRepo;

  const UploadCommentReplyImageUseCase(this._commentRepliesRepo);

  @override
  Future<FirebaseRequestResult<TaskSnapshot>> call(File? params) async {
    return await _commentRepliesRepo.uploadCommentReplyImage(params);
  }
}
