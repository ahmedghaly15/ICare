part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {
  const LoginInitial();
}

class ChangePassVisibilityState extends LoginState {
  final bool isLoginPassVisible;

  const ChangePassVisibilityState({required this.isLoginPassVisible});

  @override
  List<Object> get props => [isLoginPassVisible];
}
