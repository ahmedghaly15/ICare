import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/domain/usecases/send_message.dart';
import 'package:icare/src/features/chat/domain/usecases/upload_message_image.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_details/chat_details_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ChatDetailsCubit extends Cubit<ChatDetailsState> {
  final SendMessageUseCase sendMessageUseCase;
  final UploadMessageImageUseCase uploadMessageImageUseCase;

  ChatDetailsCubit({
    required this.sendMessageUseCase,
    required this.uploadMessageImageUseCase,
  }) : super(const ChatDetailsState.initial()) {
    messageController = TextEditingController();
  }

  late final TextEditingController messageController;

  Stream<QuerySnapshot<Map<String, dynamic>>> messagesStream(
      String receiverId) {
    return accessCurrentUserChatsCollection()
        .doc(receiverId)
        .collection(AppStrings.messagesCollection)
        .orderBy(AppStrings.dateTime, descending: true)
        .snapshots();
  }

  void Function()? newMessage(BuildContext context,
      {required ICareUser receiver}) {
    return messageImage == null && messageController.text.isEmpty
        ? null
        : () {
            if (messageImage == null && messageController.text.isNotEmpty) {
              _sendMessage(
                context,
                params: SendMessageParams(
                  date: getDate(),
                  time: DateFormat.jm().format(DateTime.now()),
                  messageText: messageController.text,
                  receiver: receiver,
                ),
              );
            } else if (messageImage != null && messageController.text.isEmpty) {
              _uploadMessageImage(context,
                  params: SendMessageParams(
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                    receiver: receiver,
                  ));
            } else if (messageImage != null &&
                messageController.text.isNotEmpty) {
              _uploadMessageImage(context,
                  params: SendMessageParams(
                    date: getDate(),
                    time: DateFormat.jm().format(DateTime.now()),
                    messageText: messageController.text,
                    receiver: receiver,
                  ));
            }
          };
  }

  void _sendMessage(
    BuildContext context, {
    required SendMessageParams params,
  }) async {
    await context.read<ChatCubit>().checkChatExistence(params.receiver!.uId!);
    emit(const ChatDetailsState.sendMessageLoading());
    final result = await sendMessageUseCase.call(params);
    result.when(
      success: (_) {
        emit(
            ChatDetailsState.sendMessageSuccess(messageController.text.trim()));
        messageController.clear();
      },
      error: (error) =>
          emit(ChatDetailsState.sendMessageError(error.failureMsg ?? '')),
    );
  }

  File? messageImage;

  void pickMessageImage(ImageSource source) async {
    getIt.get<ImagePicker>().pickImage(source: source).then((pickedImage) {
      _updateMessageImage(pickedImage);
    }).catchError((error) {
      emit(ChatDetailsState.pickMessageImageError(error.toString()));
    });
  }

  void _updateMessageImage(XFile? pickedImage) {
    if (pickedImage != null) {
      messageImage = File(pickedImage.path);
      emit(ChatDetailsState.pickMessageImageSuccess(messageImage!));
    }
  }

  void _uploadMessageImage(
    BuildContext context, {
    required SendMessageParams params,
  }) async {
    emit(const ChatDetailsState.uploadMessageImageLoading());
    final result = await uploadMessageImageUseCase(messageImage!);
    result.when(
      success: (taskSnapshot) => _sendMessageWithImage(
        context,
        taskSnapshot: taskSnapshot,
        params: params,
      ),
      error: (error) => emit(
          ChatDetailsState.uploadMessageImageError(error.failureMsg ?? '')),
    );
  }

  void _sendMessageWithImage(
    BuildContext context, {
    required TaskSnapshot taskSnapshot,
    required SendMessageParams params,
  }) {
    taskSnapshot.ref.getDownloadURL().then((imageUrl) {
      _sendMessage(
        context,
        params: SendMessageParams(
          messageText: params.messageText,
          date: params.date,
          time: params.time,
          messageImage: imageUrl,
          receiver: params.receiver,
        ),
      );
      emit(ChatDetailsState.uploadMessageImageSuccess(imageUrl));
      removePickedMessageImage();
    }).catchError((error) {
      emit(ChatDetailsState.uploadMessageImageError(error.toString()));
    });
  }

  void removePickedMessageImage() {
    messageImage = null;
    emit(const ChatDetailsState.removeMessageImage());
  }

  void setNewTextValue(String text) {
    messageController.text = text;
    emit(ChatDetailsState.setNewTextValue(text));
  }

  @override
  Future<void> close() {
    messageController.dispose();
    return super.close();
  }
}
