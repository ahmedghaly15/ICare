import 'package:flutter_bloc/flutter_bloc.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(const ResetPasswordInitial());

  bool isResetPassVisible = true;
  bool isConfirmPassVisible = true;

  void changePassVisibility() {
    isResetPassVisible = !isResetPassVisible;
    emit(ChangePassVisibilityState(isResetPassVisible: isResetPassVisible));
  }

  void changeConfirmPassVisibility() {
    isConfirmPassVisible = !isConfirmPassVisible;
    emit(ChangePassVisibilityState(isResetPassVisible: isConfirmPassVisible));
  }
}
