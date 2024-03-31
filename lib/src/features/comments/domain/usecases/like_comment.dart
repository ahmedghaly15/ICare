import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';
import 'package:icare/src/features/tiny_tales/data/models/like_params.dart';

class LikeCommentUseCase implements FirebaseUseCase<void, LikeParams> {
  final CommentsRepo _commentsRepo;

  const LikeCommentUseCase(this._commentsRepo);

  @override
  Future<FirebaseRequestResult<void>> call(LikeParams params) async {
    return await _commentsRepo.likeComment(params);
  }
}
