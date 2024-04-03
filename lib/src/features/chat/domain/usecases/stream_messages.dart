import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/chat/data/repositories/chat_repo.dart';

class StreamMessagesUseCase
    implements
        RegularUseCase<Stream<QuerySnapshot<Map<String, dynamic>>>, String> {
  final ChatRepo _chatRepo;

  const StreamMessagesUseCase(this._chatRepo);

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> call(String params) {
    return _chatRepo.streamMessages(params);
  }
}
