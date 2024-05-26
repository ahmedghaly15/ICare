import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_details_state.freezed.dart';

@freezed
class ChatDetailsState<T> with _$ChatDetailsState<T> {
  const factory ChatDetailsState.initial() = _ChatDetailsInitial;
  const factory ChatDetailsState.sendMessageLoading() = SendMessageLoading;
  const factory ChatDetailsState.sendMessageSuccess(String message) =
      SendMessageSuccess<T>;
  const factory ChatDetailsState.sendMessageError(String error) =
      SendMessageError<T>;
  const factory ChatDetailsState.pickMessageImageSuccess(File messageImage) =
      PickMessageImageSuccess<T>;
  const factory ChatDetailsState.pickMessageImageError(String error) =
      PickMessageImageError<T>;
  const factory ChatDetailsState.uploadMessageImageLoading() =
      UploadMessageImageLoading;
  const factory ChatDetailsState.uploadMessageImageSuccess(String imageUrl) =
      UploadMessageImageSuccess<T>;
  const factory ChatDetailsState.uploadMessageImageError(String error) =
      UploadMessageImageError<T>;
  const factory ChatDetailsState.setNewTextValue(String text) =
      SetNewTextValue<T>;
  const factory ChatDetailsState.removeMessageImage() = RemoveMessageImage;
}
