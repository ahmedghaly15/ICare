import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/data/repositories/chat_repo.dart';

class SendMessageUseCase implements FirebaseUseCase<void, SendMessageParams> {
  final ChatRepo _chatRepo;

  const SendMessageUseCase(this._chatRepo);

  @override
  Future<FirebaseRequestResult<void>> call(SendMessageParams params) async {
    return await _chatRepo.sendMessage(params);
  }
}
