part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

class ChangePassVisibilityState extends RegisterState {
  final bool isRegisterPassVisible;

  const ChangePassVisibilityState({required this.isRegisterPassVisible});

  @override
  List<Object> get props => [isRegisterPassVisible];
}
