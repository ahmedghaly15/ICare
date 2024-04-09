import 'package:flutter/material.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/user/data/datasources/user_local_datasource.dart';
import 'package:icare/src/features/user/data/datasources/user_remote_datasource.dart';
import 'package:icare/src/features/user/domain/repositories/user_repo.dart';

class UserRepoImpl implements UserRepo {
  final UserRemoteDataSource _userRemoteDataSource;
  final UserLocalDatasource _userLocalDatasource;

  const UserRepoImpl(
    this._userRemoteDataSource,
    this._userLocalDatasource,
  );

  @override
  Future<FirebaseRequestResult<ICareUser>> getUserData() async {
    if (_userLocalDatasource.userJson() == null) {
      try {
        final ICareUser user = await _userRemoteDataSource.getUserData();
        await _userLocalDatasource.cacheUser(user);
        return FirebaseRequestResult<ICareUser>.success(user);
      } catch (error) {
        return FirebaseRequestResult<ICareUser>.error(
            FirebaseErrorHandler.handleError(error));
      }
    } else {
      debugPrint('********* GOT CACHED USER DATA **********');
      return FirebaseRequestResult<ICareUser>.success(
        _userLocalDatasource.getCachedUser(),
      );
    }
  }

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> getAllUsers() {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final query = await _userRemoteDataSource.getAllUsers();

        return query.docs.map((doc) => ICareUser.fromJson(doc.data())).toList();
      },
    );
  }

  @override
  Future<FirebaseRequestResult<void>> follow(ICareUser user) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _userRemoteDataSource.follow(user),
    );
  }

  @override
  Future<FirebaseRequestResult<void>> unFollow(ICareUser user) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _userRemoteDataSource.unFollow(user),
    );
  }

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowers() {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final query = await _userRemoteDataSource.getFollowers();
        return query.docs.map((e) => ICareUser.fromJson(e.data())).toList();
      },
    );
  }

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowing() {
    return executeAndHandleFirebaseErrors<List<ICareUser>>(
      () async {
        final query = await _userRemoteDataSource.getFollowing();
        return query.docs.map((e) => ICareUser.fromJson(e.data())).toList();
      },
    );
  }
}
