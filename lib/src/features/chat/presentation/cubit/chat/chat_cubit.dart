import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/chat/domain/usecases/also_delete_chat_for_other_user.dart';
import 'package:icare/src/features/chat/domain/usecases/delete_chat.dart';
import 'package:icare/src/features/chat/domain/usecases/get_chats.dart';
import 'package:icare/src/features/chat/presentation/cubit/chat/chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  final GetChatsUseCase getChatsUseCase;
  final AlsoDeleteChatForOtherUserUseCase alsoDeleteChatForOtherUserUseCase;
  final DeleteChatUseCase deleteChatUseCase;

  ChatCubit({
    required this.getChatsUseCase,
    required this.alsoDeleteChatForOtherUserUseCase,
    required this.deleteChatUseCase,
  }) : super(const ChatState.initial());

  List<ICareUser> _chats = [];
  Future<void> getChats() async {
    emit(const ChatState.getChatsLoading());
    final result = await getChatsUseCase.call(const NoParams());
    result.when(
      success: (data) {
        _chats = data;
        emit(ChatState.getChatsSuccess(data));
      },
      error: (error) => emit(ChatState.getChatsError(error.failureMsg ?? '')),
    );
  }

  Future<void> checkChatExistence(String receiverId) async {
    final docRef =
        await accessCurrentUserChatsCollection().doc(receiverId).get();

    if (!docRef.exists) {
      getIt
          .get<CacheHelper>()
          .removeData(key: AppStrings.cachedChats)
          .then((_) {
        getChats();
      });
    } else {
      debugPrint('***** EXISTING CHAT *****');
    }
  }

  void alsoDeleteChatForOtherUser(String receiverId) async {
    emit(const ChatState.deleteChatLoading());
    final result = await alsoDeleteChatForOtherUserUseCase(receiverId);
    result.when(
      success: (_) => emit(const ChatState.deleteChatSuccess()),
      error: (error) => emit(ChatState.deleteChatError(error.failureMsg ?? '')),
    );
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
      deleteChatSuccess: () {
        checkChatExistence(receiverId);
      },
      deleteChatError: (error) {
        context.showICareDialogError(error);
      },
    );
  }

  bool isSearching = false;
  void invertIsSearching() {
    isSearching = !isSearching;
    emit(ChatState.invertIsSearchingBool(isSearching));
  }

  void searchForChat(String value) {
    if (value.isEmpty) {
      emit(ChatState.getChatsSuccess(_chats));
      return;
    }

    List<ICareUser> searchList = [];
    searchList = _chats
        .where((user) => user.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(ChatState.getChatsSuccess(searchList));
  }
}
