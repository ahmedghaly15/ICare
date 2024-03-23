import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/delete_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';

class DeleteCommentUseCase
    implements FirebaseUseCase<void, DeleteCommentParams> {
  final CommentsRepo _commentsRepo;

  const DeleteCommentUseCase(this._commentsRepo);

  @override
  Future<FirebaseRequestResult<void>> call(DeleteCommentParams params) async {
    return await _commentsRepo.deleteComment(params);
  }
}
