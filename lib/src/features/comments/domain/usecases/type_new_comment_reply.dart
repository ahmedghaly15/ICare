import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';

class TypeNewCommentReplyUseCase
    implements
        FirebaseUseCase<DocumentReference<Map<String, dynamic>>,
            TypeNewCommentParams> {
  final CommentRepliesRepo _commentRepliesRepo;

  const TypeNewCommentReplyUseCase(this._commentRepliesRepo);

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>> call(
    TypeNewCommentParams params,
  ) async {
    return await _commentRepliesRepo.typeNewCommentReply(params);
  }
}
