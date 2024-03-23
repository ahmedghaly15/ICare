import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/comments/data/models/type_new_comment_params.dart';
import 'package:icare/src/features/comments/domain/repositories/comments_repo.dart';

class TypeNewCommentUseCase
    implements
        FirebaseUseCase<DocumentReference<Map<String, dynamic>>,
            TypeNewCommentParams> {
  final CommentsRepo _commentsRepo;

  const TypeNewCommentUseCase(this._commentsRepo);

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>> call(
    TypeNewCommentParams params,
  ) async {
    return await _commentsRepo.typeNewComment(params);
  }
}
