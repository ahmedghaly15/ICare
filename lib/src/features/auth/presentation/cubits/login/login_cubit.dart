import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/helpers/extensions.dart';
import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/utils/functions/navigate_to_home_after_login_or_register.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';
import 'package:icare/src/features/auth/data/models/auth_request_params.dart';
import 'package:icare/src/features/auth/domain/usecases/create_firestore_user.dart';
import 'package:icare/src/features/auth/domain/usecases/login.dart';
import 'package:icare/src/features/auth/domain/usecases/sign_in_with_google.dart';
import 'package:icare/src/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  final CreateFirestoreUserUseCase createFirestoreUserUseCase;

  LoginCubit({
    required this.loginUseCase,
    required this.signInWithGoogleUseCase,
    required this.createFirestoreUserUseCase,
  }) : super(const LoginState.initial()) {
    _initFormAttributes();
  }

  @override
  Future<void> close() {
    _disposeController();
    _disposeFocusNodes();
    return super.close();
  }

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final FocusNode emailFocusNode;
  late final FocusNode passwordFocusNode;
  late final GlobalKey<FormState> formKey;
  late AutovalidateMode autovalidateMode;

  void _initFormAttributes() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  void _disposeFocusNodes() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
  }

  void _disposeController() {
    emailController.dispose();
    passwordController.dispose();
  }

  void login() async {
    emit(const LoginState.loading());
    final response = await loginUseCase(
      AuthRequestParams(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) =>
          emit(LoginState.success(loginResponse.user!.uid)),
      error: (error) => emit(
        LoginState.error(error: error.failureMsg ?? ''),
      ),
    );
  }

  void signInWithGoogle() async {
    emit(const LoginState.signInWithGoogleLoading());
    final response = await signInWithGoogleUseCase(const NoParams());
    response.when(
      success: (credential) async {
        await createFirestoreUserUseCase(
          CreateFirestoreUserParams(
            name: credential.user!.displayName!,
            email: credential.user!.email!,
            uId: credential.user!.uid,
          ),
        );
        emit(LoginState.signInWithGoogleSuccess(credential.user!.uid));
      },
      error: (error) => emit(
        LoginState.signInWithGoogleError(error: error.failureMsg ?? ''),
      ),
    );
  }

  bool isLoginPassVisible = true;
  void changePassVisibility() {
    isLoginPassVisible = !isLoginPassVisible;
    emit(LoginState.convertBoolValue(boolean: isLoginPassVisible));
  }

  void googleListener(LoginState<dynamic> state, BuildContext context) {
    state.whenOrNull(
      signInWithGoogleSuccess: (data) {
        navigateToHomeAfterLoginOrRegister(context, data);
      },
      signInWithGoogleError: (error) {
        if (error != "type 'Null' is not a subtype of type 'UserCredential'") {
          context.showICareDialogError(error);
        }
      },
    );
  }
}
