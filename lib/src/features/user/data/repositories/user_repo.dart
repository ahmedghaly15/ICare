import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/features/user/data/datasources/user_remote_datasource.dart';

class UserRepo {
  final UserRemoteDataSource _userRemoteDataSource;

  const UserRepo(
    this._userRemoteDataSource,
  );

  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserData() {
    return _userRemoteDataSource.getUserData();
  }
}
