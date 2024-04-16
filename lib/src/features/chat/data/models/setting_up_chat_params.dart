import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';

class SettingUpChatParams {
  final String receiverId;
  final MessageModel messageModel;
  final ICareUser? receiver;

  const SettingUpChatParams({
    required this.receiverId,
    required this.messageModel,
    this.receiver,
  });
}
