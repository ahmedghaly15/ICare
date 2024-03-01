import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(String uId) = Success<T>;
  const factory LoginState.error({required String error}) = Error;
  const factory LoginState.signInWithGoogleLoading() = SignInWithGoogleLoading;
  const factory LoginState.signInWithGoogleSuccess({required T data}) =
      SignInWithGoogleSuccess<T>;
  const factory LoginState.signInWithGoogleError({required String error}) =
      SignInWithGoogleError;
  const factory LoginState.convertBoolValue({required bool boolean}) =
      ChangePassVisibility;
}
