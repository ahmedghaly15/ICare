import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class UnLikeCommentReplyUseCase implements FirebaseUseCase<void, LikeParams> {
  final CommentRepliesRepo _commentRepliesRepo;

  const UnLikeCommentReplyUseCase(this._commentRepliesRepo);

  @override
  Future<FirebaseRequestResult<void>> call(LikeParams params) async {
    return await _commentRepliesRepo.unLikeCommentReply(params);
  }
}
