import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserRemoteDataSource {
  Future<ICareUser> getUserData();
  Future<List<ICareUser>> getAllUsers();
}

class UserRemoteDatasourceImpl implements UserRemoteDataSource {
  const UserRemoteDatasourceImpl();

  @override
  Future<ICareUser> getUserData() async {
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await _accessUsersCollection().doc(Helper.uId).get();

    return ICareUser.fromJson(documentSnapshot.data()!);
  }

  CollectionReference<Map<String, dynamic>> _accessUsersCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection);
  }

  @override
  Future<List<ICareUser>> getAllUsers() async {
    final List<ICareUser> users = <ICareUser>[];

    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await _accessUsersCollection().get();

    for (final DocumentSnapshot<Map<String, dynamic>> documentSnapshot
        in querySnapshot.docs) {
      users.add(ICareUser.fromJson(documentSnapshot.data()!));
    }

    return users;
  }
}
