import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/network/network_info.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/chat/data/datasources/chat_local_datasource.dart';
import 'package:icare/src/features/chat/data/datasources/chat_remote_datasource.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';

class ChatRepo {
  final ChatRemoteDatasource _chatRemoteDatasource;
  final ChatLocalDatasource _chatLocalDatasource;

  const ChatRepo(
    this._chatRemoteDatasource,
    this._chatLocalDatasource,
  );

  Future<FirebaseRequestResult<void>> sendMessage(
    SendMessageParams params,
  ) async {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _chatRemoteDatasource.sendMessage(params),
    );
  }

  Future<FirebaseRequestResult<TaskSnapshot>> uploadMessageImage(
    File? messageImage,
  ) {
    return executeAndHandleFirebaseErrors<TaskSnapshot>(
      () async => await _chatRemoteDatasource.uploadMessageImage(messageImage),
    );
  }

  Future<FirebaseRequestResult<List<ICareUser>>> getChats() async {
    if (_chatLocalDatasource.cachedChatsJson() != null) {
      debugPrint('*********** GOT CACHED CHATS DATA **********');
      return FirebaseRequestResult.success(
          _chatLocalDatasource.retrieveCachedChats());
    } else {
      debugPrint('*********** GOT REMOTE CHATS DATA **********');
      if (await getIt.get<NetworkInfo>().isConnected) {
        try {
          final chats = await _chatRemoteDatasource.getChats();
          await _chatLocalDatasource.cacheChats(chats);
          return FirebaseRequestResult.success(chats);
        } catch (error) {
          return FirebaseRequestResult.error(
            FirebaseErrorHandler.handleError(error),
          );
        }
      } else {
        return FirebaseRequestResult.error(
          FirebaseErrorHandler.handleError(AppStrings.noInternetConnection),
        );
      }
    }
  }

  Future<FirebaseRequestResult<void>> deleteChat(String receiverId) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _chatRemoteDatasource.deleteChat(receiverId),
    );
  }
}
