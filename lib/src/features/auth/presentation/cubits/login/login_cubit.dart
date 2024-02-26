import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/auth/data/models/login_request_params.dart';
import 'package:icare/src/features/auth/domain/usecases/login.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;

  LoginCubit(this._loginUseCase) : super(const LoginState.initial());

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;

  late final GlobalKey<FormState> formKey;

  late AutovalidateMode autovalidateMode;

  void initFormAttributes() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  void disposeFocusNodes() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  void disposeController() {
    emailController.dispose();
    passwordController.dispose();
  }

  void login() async {
    emit(const LoginState.loading());

    final response = await _loginUseCase(
      LoginRequestParams(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) => emit(LoginState.success(data: loginResponse)),
      error: (error) => emit(LoginState.error(error: error.failureMsg ?? '')),
    );
  }

  bool isLoginPassVisible = true;

  void changePassVisibility() {
    isLoginPassVisible = !isLoginPassVisible;

    emit(LoginState.changePassVisibility(
        isLoginPassVisible: isLoginPassVisible));
  }
}
