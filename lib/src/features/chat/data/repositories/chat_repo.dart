import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/chat/data/datasources/chat_datasource.dart';
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

  Future<FirebaseRequestResult<TaskSnapshot>> uploadMessageImage(
    File? messageImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async => await _chatDatasource.uploadMessageImage(messageImage),
    );
  }

  Future<FirebaseRequestResult<List<ICareUser>>> getChats() {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final query = await _chatDatasource.getChats();
        return query.docs.map((doc) => ICareUser.fromJson(doc.data())).toList();
      },
    );
  }
}
