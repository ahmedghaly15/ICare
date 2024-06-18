import 'package:flutter/material.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/helpers/constants.dart';
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
    final String? usersJson = await _userLocalDatasource.userJson();
    if (usersJson == null || usersJson.isEmpty) {
      try {
        debugPrint('********* GOT NOT CACHED USER DATA **********');
        final ICareUser user = await _userRemoteDataSource.getUserData();
        await _userLocalDatasource.cacheUser(user);
        return FirebaseRequestResult<ICareUser>.success(user);
      } catch (error) {
        return FirebaseRequestResult<ICareUser>.error(
            FirebaseErrorHandler.handleError(error));
      }
    } else {
      debugPrint('********* GOT CACHED USER DATA **********');
      final user = await _userLocalDatasource.getCachedUser();
      return FirebaseRequestResult<ICareUser>.success(user);
    }
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
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowers(
    ICareUser user,
  ) async {
    if (user.uId == Constants.uId) {
      return await _getCurrentUserFollowers(user);
    } else {
      return executeAndHandleFirebaseErrors<List<ICareUser>>(
        () async => await _userRemoteDataSource.getFollowers(user),
      );
    }
  }

  Future<FirebaseRequestResult<List<ICareUser>>> _getCurrentUserFollowers(
    ICareUser user,
  ) async {
    if (_userLocalDatasource.currentUserFollowersJson() == null) {
      try {
        debugPrint(
            '*********** GOT NOT CACHED CURRENT USER FOLLOWERS **********');
        final List<ICareUser> followers =
            await _userRemoteDataSource.getFollowers(user);
        await _userLocalDatasource.cacheCurrentUserFollowers(followers);
        return FirebaseRequestResult<List<ICareUser>>.success(followers);
      } catch (error) {
        return FirebaseRequestResult<List<ICareUser>>.error(
          FirebaseErrorHandler.handleError(error),
        );
      }
    } else {
      debugPrint('*********** GOT CACHED CURRENT USER FOLLOWERS **********');
      return FirebaseRequestResult<List<ICareUser>>.success(
        _userLocalDatasource.getCachedCurrentUserFollowers(),
      );
    }
  }

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowing(ICareUser user) {
    if (user.uId == Constants.uId) {
      return _getCurrentUserFollowing(user);
    } else {
      return executeAndHandleFirebaseErrors<List<ICareUser>>(
        () async => await _userRemoteDataSource.getFollowing(user),
      );
    }
  }

  Future<FirebaseRequestResult<List<ICareUser>>> _getCurrentUserFollowing(
    ICareUser user,
  ) async {
    if (_userLocalDatasource.currentUserFollowingJson() == null) {
      try {
        debugPrint(
            '*********** GOT NOT CACHED CURRENT USER FOLLOWING **********');
        final List<ICareUser> following =
            await _userRemoteDataSource.getFollowing(user);
        await _userLocalDatasource.cacheCurrentUserFollowing(following);
        return FirebaseRequestResult<List<ICareUser>>.success(following);
      } catch (error) {
        return FirebaseRequestResult<List<ICareUser>>.error(
          FirebaseErrorHandler.handleError(error),
        );
      }
    } else {
      debugPrint('*********** GOT CACHED CURRENT USER FOLLOWING **********');
      return FirebaseRequestResult<List<ICareUser>>.success(
        _userLocalDatasource.getCachedCurrentUserFollowing(),
      );
    }
  }

  @override
  Future<FirebaseRequestResult<void>> signOut() {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _userRemoteDataSource.signOut(),
    );
  }
}
