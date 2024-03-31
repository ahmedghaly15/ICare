import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class IsCommentLikedByMeUseCase
    implements RegularUseCase<Stream<bool>, LikeParams> {
  final CommentsRepo _commentsRepo;

  const IsCommentLikedByMeUseCase(this._commentsRepo);

  @override
  Stream<bool> call(LikeParams params) {
    return _commentsRepo.isCommentLikedByMe(params);
  }
}
