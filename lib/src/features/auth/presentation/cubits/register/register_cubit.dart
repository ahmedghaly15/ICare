import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';
import 'package:icare/src/features/auth/data/models/register_request_params.dart';
import 'package:icare/src/features/auth/domain/usecases/create_firestore_user.dart';
import 'package:icare/src/features/auth/domain/usecases/register.dart';
import 'package:icare/src/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;
  final CreateFirestoreUserUseCase createFirestoreUserUseCase;

  RegisterCubit({
    required this.registerUseCase,
    required this.createFirestoreUserUseCase,
  }) : super(const RegisterState.initial()) {
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

  void _createFirestoreUser(CreateFirestoreUserParams params) async {
    final response = await createFirestoreUserUseCase(params);

    response.when(
      success: (success) {
        emit(const RegisterState.createFirestoreUserSuccess());
        emit(RegisterState.success(data: params.uId));
      },
      error: (error) =>
          emit(RegisterState.error(error: error.failureMsg ?? '')),
    );
  }

  void register() async {
    emit(const RegisterState.loading());

    final response = await registerUseCase(
      RegisterRequestParams(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );

    response.when(
      success: (credential) {
        _createFirestoreUser(
          CreateFirestoreUserParams(
            name: nameController.text.trim(),
            email: emailController.text.trim(),
            uId: credential.user!.uid,
          ),
        );
      },
      error: (error) =>
          emit(RegisterState.error(error: error.failureMsg ?? '')),
    );
  }
}
