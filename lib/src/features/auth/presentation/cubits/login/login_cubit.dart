import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());

  bool isLoginPassVisible = true;

  void changePassVisibility() {
    isLoginPassVisible = !isLoginPassVisible;

    emit(ChangePassVisibilityState(isLoginPassVisible: isLoginPassVisible));
  }
}
