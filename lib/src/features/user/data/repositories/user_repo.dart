import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/features/user/data/datasources/user_datasource.dart';

class UserRepo {
  final UserDataSource _userDataSource;

  const UserRepo(this._userDataSource);

  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserData() {
    return _userDataSource.getUserData();
  }
}
