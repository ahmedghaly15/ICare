import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserDataSource {
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData();
}

class UserDatasourceImpl implements UserDataSource {
  const UserDatasourceImpl();

  @override
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .get();
  }
}
