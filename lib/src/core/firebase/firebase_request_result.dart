import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';

part 'firebase_request_result.freezed.dart';

@freezed
class FirebaseRequestResult<T> with _$FirebaseRequestResult<T> {
  const factory FirebaseRequestResult.success(T data) = Success<T>;
  const factory FirebaseRequestResult.error(FirebaseErrorHandler errorHandler) =
      Error<T>;
}
