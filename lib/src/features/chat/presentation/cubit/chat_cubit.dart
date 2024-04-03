import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/auth_helper.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/features/chat/data/models/message_model.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/domain/usecases/send_message.dart';
import 'package:icare/src/features/chat/domain/usecases/stream_messages.dart';
import 'package:icare/src/features/chat/domain/usecases/upload_message_image.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ChatCubit extends Cubit<ChatState> {
  final StreamMessagesUseCase streamMessagesUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final UploadMessageImageUseCase uploadMessageImageUseCase;

  ChatCubit({
    required this.streamMessagesUseCase,
    required this.sendMessageUseCase,
    required this.uploadMessageImageUseCase,
  }) : super(const ChatState.initial()) {
    messageController = TextEditingController();
  }

  late final TextEditingController messageController;

  List<MessageModel> messages = <MessageModel>[];
  void streamMessages(String receiverId) {
    emit(const ChatState.streamMessagesLoading());
    messagesStream(receiverId).listen((snapshot) {
      messages.clear();

      for (var element in snapshot.docs) {
        messages.add(MessageModel.fromJson(element.data()));
      }
      emit(ChatState.streamMessagesSuccess(messages));
    }).onError((error) {
      emit(ChatState.streamMessagesError(error.toString()));
    });
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> messagesStream(
          String receiverId) =>
      streamMessagesUseCase.call(receiverId);

  void Function()? newMessage({
    required BuildContext context,
    required String receiverId,
    required String receiverName,
  }) {
    return messageImage == null && messageController.text.isEmpty
        ? null
        : () {
            AuthHelper.keyboardUnfocus(context);
            if (messageImage == null && messageController.text.isNotEmpty) {
              _sendMessage(
                SendMessageParams(
                  receiverId: receiverId,
                  receiverName: receiverName,
                  context: context,
                  date: getDate(),
                  time: DateFormat.jm().format(DateTime.now()),
                  messageText: messageController.text,
                ),
              );
            } else if (messageImage != null && messageController.text.isEmpty) {
              _uploadMessageImage(SendMessageParams(
                receiverId: receiverId,
                receiverName: receiverName,
                context: context,
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
              ));
            } else if (messageImage != null &&
                messageController.text.isNotEmpty) {
              _uploadMessageImage(SendMessageParams(
                receiverId: receiverId,
                receiverName: receiverName,
                context: context,
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
                messageText: messageController.text,
              ));
            }
          };
  }

  void _sendMessage(SendMessageParams params) async {
    emit(const ChatState.sendMessageLoading());

    final result = await sendMessageUseCase.call(params);
    result.when(
      success: (_) => emit(const ChatState.sendMessageSuccess()),
      error: (error) =>
          emit(ChatState.sendMessageError(error.failureMsg ?? '')),
    );
  }

  File? messageImage;

  void pickMessageImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateMessageImage(pickedImage);
    }).catchError((error) {
      emit(ChatState.pickMessageImageError(error.toString()));
    });
  }

  void _updateMessageImage(XFile? pickedImage) {
    if (pickedImage != null) {
      messageImage = File(pickedImage.path);
      emit(ChatState.pickMessageImageSuccess(messageImage!));
    }
  }

  void _uploadMessageImage(SendMessageParams params) async {
    emit(const ChatState.uploadMessageImageLoading());
    final result = await uploadMessageImageUseCase(messageImage!);
    result.when(
      success: (taskSnapshot) => _sendMessageWithImage(taskSnapshot, params),
      error: (error) =>
          emit(ChatState.uploadMessageImageError(error.failureMsg ?? '')),
    );
  }

  void _sendMessageWithImage(
    TaskSnapshot taskSnapshot,
    SendMessageParams params,
  ) {
    taskSnapshot.ref.getDownloadURL().then((imageUrl) {
      _sendMessage(
        SendMessageParams(
          context: params.context,
          receiverId: params.receiverId,
          receiverName: params.receiverName,
          messageText: params.messageText,
          date: params.date,
          time: params.time,
          messageImage: imageUrl,
        ),
      );
      removePickedMessageImage();
      emit(ChatState.uploadMessageImageSuccess(imageUrl));
    }).catchError((error) {
      emit(ChatState.uploadMessageImageError(error.toString()));
    });
  }

  void removePickedMessageImage() {
    messageImage = null;
    emit(const ChatState.removeMessageImage());
  }

  void setNewTextValue(String text) {
    emit(ChatState.setNewTextValue(text));
  }

  @override
  Future<void> close() {
    messageController.clear();
    return super.close();
  }
}
