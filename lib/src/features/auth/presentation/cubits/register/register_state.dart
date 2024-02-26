import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _RegisterInitial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success({required T data}) = Success<T>;
  const factory RegisterState.error({required String error}) = Error;
  const factory RegisterState.createFirestoreUserSuccess() =
      CreateFirestoreUserSuccess;
  // const factory RegisterState.createFirestoreUserError(
  //     {required String error}) = CreateFirestoreUserError;
  const factory RegisterState.changePassVisibility({
    required bool isRegisterPassVisible,
  }) = ChangePassVisibility;
}
