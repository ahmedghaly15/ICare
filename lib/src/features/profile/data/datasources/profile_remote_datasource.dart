import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class ProfileRemoteDatasource {
  Future<QuerySnapshot<Map<String, dynamic>>> getUserTinyTales();
  Future<QuerySnapshot<Map<String, dynamic>>> getUserPhotos();
}

class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  const ProfileRemoteDatasourceImpl();

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getUserPhotos() async {
    return await _accessUsersCollection()
        .doc(Helper.uId)
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
    return await _accessUsersCollection()
        .doc(Helper.uId)
        .collection(AppStrings.tinyTalesCollection)
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .get();
  }
}
