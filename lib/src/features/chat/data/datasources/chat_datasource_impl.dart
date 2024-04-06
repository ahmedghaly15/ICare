import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/chat/data/datasources/chat_datasource.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/data/models/setting_up_chat_params.dart';

class ChatDatasourceImpl implements ChatDatasource {
  const ChatDatasourceImpl();

  CollectionReference<Map<String, dynamic>> _accessMessagesCollection(
    String receiverId, {
    String? senderId,
  }) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(senderId ?? Helper.uId)
        .collection(AppStrings.chatsCollection)
        .doc(receiverId)
        .collection(AppStrings.messagesCollection);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> streamMessages(
    String receiverId,
  ) async {
    return await _accessMessagesCollection(receiverId)
        .orderBy(AppStrings.dateTime, descending: true)
        .get();
  }

  @override
  Future<void> sendMessage(SendMessageParams params) async {
    final MessageModel message = MessageModel(
      senderId: Helper.uId,
      senderName: Helper.currentUser!.name,
      messageData: params,
      dateTime: Timestamp.now(),
    );

    await _settingUpSenderChat(SettingUpChatParams(
      receiverId: params.receiverId!,
      messageModel: message,
    ));
    await _settingUpReceiverChat(SettingUpChatParams(
      receiverId: params.receiverId!,
      messageModel: message,
    ));
  }

  Future<DocumentReference<Map<String, dynamic>>> _settingUpSenderChat(
    SettingUpChatParams params,
  ) async {
    final document = await _accessMessagesCollection(params.receiverId)
        .add(params.messageModel.toJson());

    await document.update({'messageId': document.id});

    return document;
  }

  Future<DocumentReference<Map<String, dynamic>>> _settingUpReceiverChat(
    SettingUpChatParams params,
  ) async {
    final document = await _accessMessagesCollection(
      Helper.uId!,
      senderId: params.receiverId,
    ).add(params.messageModel.toJson());

    await document.update({'messageId': document.id});

    return document;
  }

  @override
  Future<TaskSnapshot> uploadMessageImage(File? messageImage) async {
    return await getIt
        .get<FirebaseStorage>()
        .ref()
        .child(
          '${AppStrings.messagesCollection}/${Uri.file(messageImage!.path).pathSegments.last}',
        )
        .putFile(messageImage);
  }
}
