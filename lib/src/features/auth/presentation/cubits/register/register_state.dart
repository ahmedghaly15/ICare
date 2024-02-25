part of 'register_cubit.dart';

abstract class RegisterState {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

class ChangePassVisibilityState extends RegisterState {
  final bool isRegisterPassVisible;

  const ChangePassVisibilityState({required this.isRegisterPassVisible});
}
