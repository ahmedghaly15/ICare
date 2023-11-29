part of 'reset_password_cubit.dart';

abstract class ResetPasswordState extends Equatable {
  const ResetPasswordState();

  @override
  List<Object> get props => [];
}

class ResetPasswordInitial extends ResetPasswordState {
  const ResetPasswordInitial();
}

class ChangePassVisibilityState extends ResetPasswordState {
  final bool isResetPassVisible;

  const ChangePassVisibilityState({required this.isResetPassVisible});

  @override
  List<Object> get props => [isResetPassVisible];
}
