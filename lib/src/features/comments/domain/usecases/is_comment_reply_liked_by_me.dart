import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class IsCommentReplyLikedByMeUseCase
    implements RegularUseCase<Stream<bool>, LikeParams> {
  final CommentRepliesRepo _commentRepliesRepo;

  const IsCommentReplyLikedByMeUseCase(this._commentRepliesRepo);

  @override
  Stream<bool> call(LikeParams params) {
    return _commentRepliesRepo.isCommentReplyLikedByMe(params);
  }
}
