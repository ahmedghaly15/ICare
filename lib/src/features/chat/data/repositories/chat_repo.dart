import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/chat/data/datasources/chat_datasource.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';

class ChatRepo {
  final ChatDatasource _chatDatasource;

  const ChatRepo(this._chatDatasource);

  Future<FirebaseRequestResult<void>> sendMessage(
    SendMessageParams params,
  ) async {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _chatDatasource.sendMessage(params),
    );
  }

  Future<FirebaseRequestResult<List<MessageModel>>> streamMessages(
    String receiverId,
  ) {
    return executeAndHandleFirebaseErrors<List<MessageModel>>(
      () async {
        final query = await _chatDatasource.streamMessages(receiverId);

        return query.docs
            .map((doc) => MessageModel.fromJson(doc.data()))
            .toList();
      },
    );
  }

  Future<FirebaseRequestResult<TaskSnapshot>> uploadMessageImage(
    File? messageImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async => await _chatDatasource.uploadMessageImage(messageImage),
    );
  }
}
