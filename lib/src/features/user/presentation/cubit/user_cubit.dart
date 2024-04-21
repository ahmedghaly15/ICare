import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/user/domain/usecases/follow.dart';
import 'package:icare/src/features/user/domain/usecases/get_all_users.dart';
import 'package:icare/src/features/user/domain/usecases/get_followers.dart';
import 'package:icare/src/features/user/domain/usecases/get_following.dart';
import 'package:icare/src/features/user/domain/usecases/get_user_data.dart';
import 'package:icare/src/features/user/domain/usecases/sign_out.dart';
import 'package:icare/src/features/user/domain/usecases/un_follow.dart';
import 'package:icare/src/features/user/presentation/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  final GetUserDataUseCase getUserDataUseCase;
  final GetAllUsersUseCase getAllUsersUseCase;
  final FollowUseCase followUseCase;
  final UnFollowUseCase unFollowUseCase;
  final GetFollowersUseCase getFollowersUseCase;
  final GetFollowingUseCase getFollowingUseCase;
  final SignOutUseCase signOutUseCase;

  UserCubit({
    required this.getUserDataUseCase,
    required this.getAllUsersUseCase,
    required this.followUseCase,
    required this.unFollowUseCase,
    required this.getFollowersUseCase,
    required this.getFollowingUseCase,
    required this.signOutUseCase,
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

  void getFollowers(ICareUser user) async {
    emit(const UserState.getFollowersLoading());
    final result = await getFollowersUseCase(user);
    result.when(
      success: (data) => emit(UserState.getFollowers(data)),
      error: (error) =>
          emit(UserState.getFollowersError(error.failureMsg ?? '')),
    );
  }

  void getFollowing(ICareUser user) async {
    emit(const UserState.getFollowingLoading());
    final result = await getFollowingUseCase(user);
    result.when(
      success: (data) => emit(UserState.getFollowing(data)),
      error: (error) =>
          emit(UserState.getFollowingError(error.failureMsg ?? '')),
    );
  }

  Stream<bool> userIsInFollowing(String uId) {
    return _accessUsersCollection()
        .doc(Helper.uId!)
        .collection(AppStrings.followingCollection)
        .doc(uId)
        .snapshots()
        .map((doc) => doc.exists);
  }

  Stream<bool> userIsInFollowers(String userId) {
    return _accessUsersCollection()
        .doc(Helper.uId!)
        .collection(AppStrings.followersCollection)
        .doc(userId)
        .snapshots()
        .map((querySnapshot) => querySnapshot.exists);
  }

  void signOut() async {
    final result = await signOutUseCase(const NoParams());
    result.when(
      success: (_) => emit(const UserState.signOutSuccess()),
      error: (error) => emit(UserState.signOutError(error.failureMsg ?? '')),
    );
  }

  CollectionReference<Map<String, dynamic>> _accessUsersCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> followersStream(ICareUser user) {
    return _accessUsersCollection()
        .doc(user.uId)
        .collection(AppStrings.followersCollection)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> followingStream(ICareUser user) {
    return _accessUsersCollection()
        .doc(user.uId)
        .collection(AppStrings.followingCollection)
        .snapshots();
  }
}
