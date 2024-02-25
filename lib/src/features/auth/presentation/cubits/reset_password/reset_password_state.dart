part of 'reset_password_cubit.dart';

abstract class ResetPasswordState {
  const ResetPasswordState();
}

class ResetPasswordInitial extends ResetPasswordState {
  const ResetPasswordInitial();
}

class ChangePassVisibilityState extends ResetPasswordState {
  final bool isResetPassVisible;

  const ChangePassVisibilityState({required this.isResetPassVisible});
}
