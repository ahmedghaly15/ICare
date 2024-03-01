import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final GetUserDataUseCase _getUserDataUseCase;

  UserCubit(
    this._getUserDataUseCase,
  ) : super(const UserState.initial());

  Future<void> getUserData() async {
    emit(const UserState.getUserDataLoading());

    _getUserDataUseCase(const NoParams()).listen((event) {
      Helper.currentUser = ICareUser.fromJson(event.data()!);
      emit(UserState.getUserData(Helper.currentUser!));
    }).onError((error) {
      emit(UserState.getUserDataError(error.toString()));
    });
  }
}
