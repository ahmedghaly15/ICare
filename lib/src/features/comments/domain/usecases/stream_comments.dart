import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';

class StreamCommentsUseCase
    implements FirebaseUseCase<List<CommentModel>, String> {
  final CommentsRepo _commentsRepo;

  const StreamCommentsUseCase(this._commentsRepo);

  @override
  Future<FirebaseRequestResult<List<CommentModel>>> call(String params) async {
    return await _commentsRepo.streamComments(params);
  }
}
