import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/chat/data/repositories/chat_repo.dart';

class DeleteChatUseCase implements FirebaseUseCase<void, String> {
  final ChatRepo _chatRepo;

  const DeleteChatUseCase(this._chatRepo);

  @override
  Future<FirebaseRequestResult<void>> call(String params) async {
    return await _chatRepo.deleteChat(params);
  }
}
