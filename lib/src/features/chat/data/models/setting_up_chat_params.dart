import 'package:icare/src/features/chat/data/models/message_model.dart';

class SettingUpChatParams {
  final String receiverId;
  final MessageModel messageModel;

  const SettingUpChatParams({
    required this.receiverId,
    required this.messageModel,
  });
}
