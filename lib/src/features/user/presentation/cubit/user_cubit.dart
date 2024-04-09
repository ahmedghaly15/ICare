import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/user/domain/usecases/follow.dart';
import 'package:icare/src/features/user/domain/usecases/get_all_users.dart';
import 'package:icare/src/features/user/domain/usecases/get_followers.dart';
import 'package:icare/src/features/user/domain/usecases/get_following.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/domain/usecases/un_follow.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final GetUserDataUseCase getUserDataUseCase;
  final GetAllUsersUseCase getAllUsersUseCase;
  final FollowUseCase followUseCase;
  final UnFollowUseCase unFollowUseCase;
  final GetFollowersUseCase getFollowersUseCase;
  final GetFollowingUseCase getFollowingUseCase;

  UserCubit({
    required this.getUserDataUseCase,
    required this.getAllUsersUseCase,
    required this.followUseCase,
    required this.unFollowUseCase,
    required this.getFollowersUseCase,
    required this.getFollowingUseCase,
  }) : super(const UserState.initial());

  Future<void> getUserData() async {
    emit(const UserState.getUserDataLoading());
    final remoteUser = await getUserDataUseCase(const NoParams());
    remoteUser.when(
      success: (data) async {
        Helper.currentUser = data;
        emit(UserState.getUserData(data));
      },
      error: (error) {
        emit(UserState.getUserDataError(error.toString()));
      },
    );
  }

  void getAllUsers() async {
    emit(const UserState.getAllUsersLoading());
    final result = await getAllUsersUseCase(const NoParams());
    result.when(
      success: (data) => emit(UserState.getAllUsers(data)),
      error: (error) =>
          emit(UserState.getAllUsersError(error.failureMsg ?? '')),
    );
  }

  void follow(ICareUser user) async {
    final result = await followUseCase(user);
    result.when(
      success: (_) => emit(const UserState.followSuccess()),
      error: (error) => emit(UserState.followError(error.failureMsg ?? '')),
    );
  }

  void unFollow(ICareUser user) async {
    final result = await unFollowUseCase(user);
    result.when(
      success: (_) => emit(const UserState.unFollowSuccess()),
      error: (error) => emit(UserState.unFollowError(error.failureMsg ?? '')),
    );
  }

  void getFollowers() async {
    emit(const UserState.getFollowersLoading());
    final result = await getFollowersUseCase(const NoParams());
    result.when(
      success: (data) => emit(UserState.getFollowers(data)),
      error: (error) =>
          emit(UserState.getFollowersError(error.failureMsg ?? '')),
    );
  }

  void getFollowing() async {
    emit(const UserState.getFollowingLoading());
    final result = await getFollowingUseCase(const NoParams());
    result.when(
      success: (data) => emit(UserState.getFollowing(data)),
      error: (error) =>
          emit(UserState.getFollowingError(error.failureMsg ?? '')),
    );
  }
}
