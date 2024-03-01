import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/user/data/datasources/user_datasource.dart';

class UserRepo {
  final UserDataSource _userDataSource;

  const UserRepo(this._userDataSource);

  Future<FirebaseRequestResult<DocumentSnapshot<Map<String, dynamic>>>>
      getUserData() {
    return executeAndHandleFirebaseErrors<
        DocumentSnapshot<Map<String, dynamic>>>(
      () async => await _userDataSource.getUserData(),
    );
  }
}
