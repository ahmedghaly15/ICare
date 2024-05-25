import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';

part 'setting_up_chat_params.freezed.dart';

@freezed
class SettingUpChatParams with _$SettingUpChatParams {
  const factory SettingUpChatParams({
    required String receiverId,
    required MessageModel messageModel,
    ICareUser? receiver,
  }) = _SettingUpChatParams;
}
