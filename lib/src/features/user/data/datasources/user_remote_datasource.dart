import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserRemoteDataSource {
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserData();
}

class UserRemoteDatasourceImpl implements UserRemoteDataSource {
  const UserRemoteDatasourceImpl();

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserData() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .snapshots();
  }
}
