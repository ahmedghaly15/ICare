import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comment_replies_repo.dart';

class GetCommentRepliesUseCase
    implements FirebaseUseCase<List<CommentModel>, CommentRepliesViewParams> {
  final CommentRepliesRepo _commentRepliesRepo;

  const GetCommentRepliesUseCase(this._commentRepliesRepo);

  @override
  Future<FirebaseRequestResult<List<CommentModel>>> call(
    CommentRepliesViewParams params,
  ) async {
    return await _commentRepliesRepo.getCommentReplies(params);
  }
}
