import 'package:freezed_annotation/freezed_annotation.dart';

part 'icare_bot_state.freezed.dart';

@freezed
class ICareBotState<T> with _$ICareBotState<T> {
  const factory ICareBotState.initial() = _ICareBotInitial;
  const factory ICareBotState.loading() = Loading;
  const factory ICareBotState.success(T data) = Success<T>;
  const factory ICareBotState.error(String message) = Error;
  const factory ICareBotState.setNewTextValue(String text) = _SetNewTextValue;
  const factory ICareBotState.convertSendMessageTextFieldStatus(
      bool isSendMessageTextFieldEnabled) = _ConvertSendMessageTextFieldStatus;
}
