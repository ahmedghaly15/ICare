import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial());

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

  bool isLoginPassVisible = true;

  void changePassVisibility() {
    isLoginPassVisible = !isLoginPassVisible;

    emit(ChangePassVisibilityState(isLoginPassVisible: isLoginPassVisible));
  }
}
