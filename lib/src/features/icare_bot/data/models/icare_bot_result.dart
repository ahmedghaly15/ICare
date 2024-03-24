import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/features/icare_bot/data/models/icare_bot_error_handler.dart';

part 'icare_bot_result.freezed.dart';

@Freezed()
class ICareBotResult<T> with _$ICareBotResult<T> {
  const factory ICareBotResult.success(T data) = Success<T>;
  const factory ICareBotResult.failure(ICareBotErrorHandler failure) = Error<T>;
}
