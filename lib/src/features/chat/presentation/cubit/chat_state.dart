import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState<T> with _$ChatState<T> {
  const factory ChatState.initial() = _ChatInitial;
  const factory ChatState.sendMessageLoading() = SendMessageLoading;
  const factory ChatState.sendMessageSuccess() = SendMessageSuccess;
  const factory ChatState.sendMessageError(String error) = SendMessageError<T>;
  const factory ChatState.pickMessageImageSuccess(File messageImage) =
      PickMessageImageSuccess<T>;
  const factory ChatState.pickMessageImageError(String error) =
      PickMessageImageError<T>;
  const factory ChatState.uploadMessageImageLoading() =
      UploadMessageImageLoading;
  const factory ChatState.uploadMessageImageSuccess(String imageUrl) =
      UploadMessageImageSuccess<T>;
  const factory ChatState.uploadMessageImageError(String error) =
      UploadMessageImageError<T>;
  const factory ChatState.setNewTextValue(String text) = SetNewTextValue<T>;
  const factory ChatState.removeMessageImage() = RemoveMessageImage;
  const factory ChatState.getChatsLoading() = GetChatsLoading;
  const factory ChatState.getChatsSuccess(List<ICareUser> users) =
      GetChatsSuccess<T>;
  const factory ChatState.getChatsError(String error) = GetChatsError<T>;
}
