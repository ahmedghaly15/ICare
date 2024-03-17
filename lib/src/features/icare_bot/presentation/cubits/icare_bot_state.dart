import 'package:freezed_annotation/freezed_annotation.dart';

part 'icare_bot_state.freezed.dart';

@freezed
class ICareBotState<T> with _$ICareBotState<T> {
  const factory ICareBotState.initial() = _ICareBotInitial;
  const factory ICareBotState.loading() = Loading;
  const factory ICareBotState.success(T data) = Success;
  const factory ICareBotState.error(String message) = Error;
}
