import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/extensions/get_query_snapshot.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class PeopleWhoLikedDatasource {
  Future<QuerySnapshot<Map<String, dynamic>>> getPeopleWhoLiked(
      String tinyTaleId);
}

class PeopleWhoLikedDatasourceImpl implements PeopleWhoLikedDatasource {
  const PeopleWhoLikedDatasourceImpl();

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getPeopleWhoLiked(
      String tinyTaleId) async {
    return getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.tinyTalesCollection)
        .doc(tinyTaleId)
        .collection(AppStrings.likesCollection)
        .getQuerySnapshot();
  }
}
