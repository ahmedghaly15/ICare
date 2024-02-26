import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/auth/domain/usecases/forgot_password.dart';
import 'package:icare/src/features/auth/presentation/cubits/forgot_password/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordUseCase _forgotPasswordUseCase;

  ForgotPasswordCubit(this._forgotPasswordUseCase)
      : super(const ForgotPasswordState.initial());

  late final TextEditingController emailController;

  void forgotPassword() async {
    emit(const ForgotPasswordState.loading());

    final response = await _forgotPasswordUseCase(emailController.text.trim());

    response.when(
      success: (data) => emit(const ForgotPasswordState.success()),
      error: (error) =>
          emit(ForgotPasswordState.error(error: error.failureMsg ?? '')),
    );
  }
}
