import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/data/repositories/chat_repo.dart';

class StreamMessagesUseCase
    implements FirebaseUseCase<List<MessageModel>, String> {
  final ChatRepo _chatRepo;

  const StreamMessagesUseCase(this._chatRepo);

  @override
  Future<FirebaseRequestResult<List<MessageModel>>> call(String params) async {
    return await _chatRepo.streamMessages(params);
  }
}
