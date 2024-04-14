import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/profile/data/models/update_user_params.dart';
import 'package:icare/src/features/profile/domain/usecases/update_user.dart';
import 'package:icare/src/features/profile/presentation/cubits/edit_profile/edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  final UpdateUserUseCase _updateUserUseCase;
  EditProfileCubit(
    this._updateUserUseCase,
  ) : super(const EditProfileState.initial());

  Future<void> updateUser(UpdateUserParams params) async {
    emit(const EditProfileState.editProfileLoading());
    final result = await _updateUserUseCase.call(params);
    result.when(
      success: (data) => emit(const EditProfileState.editProfileSuccess()),
      error: (error) =>
          emit(EditProfileState.editProfileError(error.failureMsg ?? '')),
    );
  }
}
