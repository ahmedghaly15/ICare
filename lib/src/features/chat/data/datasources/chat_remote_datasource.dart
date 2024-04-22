import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/data/models/setting_up_chat_params.dart';

abstract class ChatRemoteDatasource {
  Future<void> sendMessage(SendMessageParams params);
  Future<TaskSnapshot> uploadMessageImage(File? messageImage);
  Future<List<ICareUser>> getChats();
  Future<void> deleteChat(String receiverId);
}

class ChatRemoteDatasourceImpl implements ChatRemoteDatasource {
  const ChatRemoteDatasourceImpl();

  CollectionReference<Map<String, dynamic>> _accessMessagesCollection(
    String receiverId, {
    String? senderId,
  }) {
    return _accessChatsCollection(senderId: senderId)
        .doc(receiverId)
        .collection(AppStrings.messagesCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessChatsCollection(
      {String? senderId}) {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(senderId ?? Helper.uId)
        .collection(AppStrings.chatsCollection);
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
      receiverId: params.receiver!.uId!,
      messageModel: message,
      receiver: params.receiver,
    ));
    await _settingUpReceiverChat(SettingUpChatParams(
      receiverId: params.receiver!.uId!,
      messageModel: message,
    ));
  }

  Future<DocumentReference<Map<String, dynamic>>> _settingUpSenderChat(
    SettingUpChatParams params,
  ) async {
    await _accessChatsCollection()
        .doc(params.receiverId)
        .set(params.receiver!.toJson());
    final document = await _accessMessagesCollection(params.receiverId)
        .add(params.messageModel.toJson());
    await document.update({'messageId': document.id});
    return document;
  }

  Future<DocumentReference<Map<String, dynamic>>> _settingUpReceiverChat(
    SettingUpChatParams params,
  ) async {
    await _accessChatsCollection(senderId: params.receiverId)
        .doc(Helper.uId)
        .set(Helper.currentUser!.toJson());
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

  @override
  Future<List<ICareUser>> getChats() async {
    List<ICareUser> chats = <ICareUser>[];
    final chatsQuery = await _accessChatsCollection().get();
    chats.addAll(
      chatsQuery.docs.map((e) => ICareUser.fromJson(e.data())).toList(),
    );
    return chats;
  }

  @override
  Future<void> deleteChat(String receiverId) async {
    await _deletingCurrentUserMessages(receiverId);
    await _deletingReceiverMessages(receiverId);
  }

  Future<void> _deletingReceiverMessages(String receiverId) async {
    final receiverMessages =
        await _accessMessagesCollection(Helper.uId!, senderId: receiverId)
            .get();

    await Future.forEach(
      receiverMessages.docs,
      (doc) async => await doc.reference.delete(),
    );
  }

  Future<void> _deletingCurrentUserMessages(String receiverId) async {
    final currentUserMessages =
        await _accessMessagesCollection(receiverId).get();
    await Future.forEach(
      currentUserMessages.docs,
      (doc) async => await doc.reference.delete(),
    );
  }
}
