import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';

class DeleteCommentReplyUseCase
    implements FirebaseUseCase<void, DeleteCommentParams> {
  final CommentRepliesRepo _commentRepliesRepo;

  const DeleteCommentReplyUseCase(this._commentRepliesRepo);
  @override
  Future<FirebaseRequestResult<void>> call(DeleteCommentParams params) async {
    return await _commentRepliesRepo.deleteCommentReply(params);
  }
}
