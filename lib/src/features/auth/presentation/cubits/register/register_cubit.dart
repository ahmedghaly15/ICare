import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  bool isRegisterPassVisible = true;
  bool isConfirmPassVisible = true;

  void changePassVisibility() {
    isRegisterPassVisible = !isRegisterPassVisible;
    emit(ChangePassVisibilityState(
        isRegisterPassVisible: isRegisterPassVisible));
  }

  void changeConfirmPassVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;

    emit(
        ChangePassVisibilityState(isRegisterPassVisible: isConfirmPassVisible));
  }
}
