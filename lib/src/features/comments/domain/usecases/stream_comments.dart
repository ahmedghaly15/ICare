import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';

class StreamCommentsUseCase
    implements
        RegularUseCase<Stream<QuerySnapshot<Map<String, dynamic>>>, String> {
  final CommentsRepo _commentsRepo;

  const StreamCommentsUseCase(this._commentsRepo);

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> call(String params) {
    return _commentsRepo.streamComments(params);
  }
}
