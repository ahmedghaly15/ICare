import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState<T> with _$ForgotPasswordState<T> {
  const factory ForgotPasswordState.initial() = _ForgotPasswordInitial;
  const factory ForgotPasswordState.loading() = Loading;
  const factory ForgotPasswordState.success() = Success<T>;
  const factory ForgotPasswordState.error({required String error}) = Error;
}
