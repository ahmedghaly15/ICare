import 'package:flutter/material.dart';
import 'package:icare/src/core/firebase/firebase_error_handler.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/user/data/datasources/user_local_datasource.dart';
import 'package:icare/src/features/user/data/datasources/user_remote_datasource.dart';

class UserRepo {
  final UserRemoteDataSource _userRemoteDataSource;
  final UserLocalDatasource _userLocalDatasource;

  const UserRepo(
    this._userRemoteDataSource,
    this._userLocalDatasource,
  );

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
}
