import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/profile/domain/usecases/get_user_tiny_tales.dart';
import 'package:icare/src/features/profile/presentation/cubits/profile/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetUserTinyTalesUseCase _getUserTinyTalesUseCase;

  ProfileCubit(
    this._getUserTinyTalesUseCase,
  ) : super(const ProfileState.initial());

  void getUserTinyTales(String uId) async {
    emit(const ProfileState.getUserTinyTalesLoading());
    final result = await _getUserTinyTalesUseCase(uId);
    result.when(
      success: (data) => emit(ProfileState.getUserTinyTalesSuccess(data)),
      error: (error) =>
          emit(ProfileState.getUserTinyTalesError(error.failureMsg ?? '')),
    );
  }
}
