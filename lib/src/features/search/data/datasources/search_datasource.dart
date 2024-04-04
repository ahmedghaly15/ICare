import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/extensions/get_query_snapshot.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class SearchDatasource {
  Future<QuerySnapshot<Map<String, dynamic>>> searchUsers();
}

class SearchDatasourceImpl implements SearchDatasource {
  const SearchDatasourceImpl();

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> searchUsers() async {
    return await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .getQuerySnapshot();
  }
}
