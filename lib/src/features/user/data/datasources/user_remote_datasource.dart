import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserRemoteDataSource {
  Future<ICareUser> getUserData();
}

class UserRemoteDatasourceImpl implements UserRemoteDataSource {
  const UserRemoteDatasourceImpl();

  @override
  Future<ICareUser> getUserData() async {
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(Helper.uId)
        .get();

    return ICareUser.fromJson(documentSnapshot.data()!);
  }
}
