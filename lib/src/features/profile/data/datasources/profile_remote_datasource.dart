import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class ProfileRemoteDatasource {
  Future<QuerySnapshot<Map<String, dynamic>>> getUserTinyTales();
  Future<QuerySnapshot<Map<String, dynamic>>> getUserPhotos(String uId);
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  const ProfileRemoteDatasourceImpl();

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getUserPhotos(String uId) async {
    return await _accessUsersCollection()
        .doc(uId)
        .collection(AppStrings.photos)
        .get();
  }

  CollectionReference<Map<String, dynamic>> _accessUsersCollection() {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getUserTinyTales() async {
    return await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .get();
  }
}
