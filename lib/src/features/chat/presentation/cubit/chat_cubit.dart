import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/get_date.dart';
import 'package:icare/src/core/widgets/icare_dialog.dart';
import 'package:icare/src/features/chat/data/models/send_message_params.dart';
import 'package:icare/src/features/chat/domain/usecases/delete_chat.dart';
import 'package:icare/src/features/chat/domain/usecases/get_chats.dart';
import 'package:icare/src/features/chat/domain/usecases/send_message.dart';
import 'package:icare/src/features/chat/domain/usecases/upload_message_image.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ChatCubit extends Cubit<ChatState> {
  final SendMessageUseCase sendMessageUseCase;
  final UploadMessageImageUseCase uploadMessageImageUseCase;
  final GetChatsUseCase getChatsUseCase;
  final DeleteChatUseCase deleteChatUseCase;

  ChatCubit({
    required this.sendMessageUseCase,
    required this.uploadMessageImageUseCase,
    required this.getChatsUseCase,
    required this.deleteChatUseCase,
  }) : super(const ChatState.initial()) {
    messageController = TextEditingController();
  }

  late final TextEditingController messageController;

  Stream<QuerySnapshot<Map<String, dynamic>>> messagesStream(
      String receiverId) {
    return _accessCurrentUserChatsCollection()
        .doc(receiverId)
        .collection(AppStrings.messagesCollection)
        .orderBy(AppStrings.dateTime, descending: true)
        .snapshots();
  }

  CollectionReference<Map<String, dynamic>>
      _accessCurrentUserChatsCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .collection(AppStrings.chatsCollection);
  }

  void getChats() async {
    emit(const ChatState.getChatsLoading());
    final result = await getChatsUseCase.call(const NoParams());
    result.when(
      success: (data) => emit(ChatState.getChatsSuccess(data)),
      error: (error) => emit(ChatState.getChatsError(error.failureMsg ?? '')),
    );
  }

  Future<void> _checkChatExistence(String receiverId) async {
    final docRef =
        await _accessCurrentUserChatsCollection().doc(receiverId).get();

    if (!docRef.exists) {
      getIt
          .get<CacheHelper>()
          .removeData(key: AppStrings.cachedChats)
          .then((value) {
        if (value) {
          getChats();
        }
      });
    } else {
      debugPrint('***** EXISTING CHAT *****');
    }
  }

  void Function()? newMessage(ICareUser receiver) {
    return messageImage == null && messageController.text.isEmpty
        ? null
        : () {
            if (messageImage == null && messageController.text.isNotEmpty) {
              _sendMessage(
                SendMessageParams(
                  date: getDate(),
                  time: DateFormat.jm().format(DateTime.now()),
                  messageText: messageController.text,
                  receiver: receiver,
                ),
              );
            } else if (messageImage != null && messageController.text.isEmpty) {
              _uploadMessageImage(SendMessageParams(
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
                receiver: receiver,
              ));
            } else if (messageImage != null &&
                messageController.text.isNotEmpty) {
              _uploadMessageImage(SendMessageParams(
                date: getDate(),
                time: DateFormat.jm().format(DateTime.now()),
                messageText: messageController.text,
                receiver: receiver,
              ));
            }
          };
  }

  void _sendMessage(SendMessageParams params) async {
    await _checkChatExistence(params.receiver!.uId!);
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
          messageText: params.messageText,
          date: params.date,
          time: params.time,
          messageImage: imageUrl,
          receiver: params.receiver,
        ),
      );
      emit(ChatState.uploadMessageImageSuccess(imageUrl));
      removePickedMessageImage();
    }).catchError((error) {
      emit(ChatState.uploadMessageImageError(error.toString()));
    });
  }

  void deleteChat(String receiverId) async {
    emit(const ChatState.deleteChatLoading());
    final result = await deleteChatUseCase(receiverId);
    result.when(
      success: (_) => emit(const ChatState.deleteChatSuccess()),
      error: (error) => emit(ChatState.deleteChatError(error.failureMsg ?? '')),
    );
  }

  void handleDeletingChatStates(
    ChatState<dynamic> state,
    BuildContext context,
    String receiverId,
  ) {
    state.whenOrNull(
      deleteChatSuccess: () async {
        await _checkChatExistence(receiverId);
      },
      deleteChatError: (error) {
        ShowICareDialog.showICareDialogError(context, error);
      },
    );
  }

  void removePickedMessageImage() {
    messageImage = null;
    emit(const ChatState.removeMessageImage());
  }

  void setNewTextValue(String text) {
    messageController.text = text;
    emit(ChatState.setNewTextValue(text));
  }

  @override
  Future<void> close() {
    messageController.clear();
    return super.close();
  }
}
