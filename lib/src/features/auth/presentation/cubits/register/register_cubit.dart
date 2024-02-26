import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial()) {
    _initFormAttributes();
  }

  late final TextEditingController nameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  late final FocusNode nameFocusNode;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final FocusNode confirmPasswordFocusNode;

  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  void _initFormAttributes() {
    formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
    _initControllers();
    _intiFocusNodes();
  }

  void _initControllers() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  void _intiFocusNodes() {
    nameFocusNode = FocusNode();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
  }

  void _disposeFocusNodes() {
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  void _disposeController() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Future<void> close() {
    _disposeController();
    _disposeFocusNodes();
    return super.close();
  }

  bool isRegisterPassVisible = true;
  bool isConfirmPassVisible = true;

  void changePassVisibility() {
    isRegisterPassVisible = !isRegisterPassVisible;
    emit(RegisterState.changePassVisibility(
        isRegisterPassVisible: isRegisterPassVisible));
  }

  void changeConfirmPassVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;

    emit(RegisterState.changePassVisibility(
        isRegisterPassVisible: isConfirmPassVisible));
  }
}
