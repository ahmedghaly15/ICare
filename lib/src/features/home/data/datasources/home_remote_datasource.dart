import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/home/data/models/developer.dart';

abstract class HomeRemoteDatasource {
  Future<List<Developer>> getDevelopers();
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  const HomeRemoteDatasourceImpl();

  @override
  Future<List<Developer>> getDevelopers() async {
    final List<Developer> developers = <Developer>[];
    final queryDevelopers = await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.developersCollection)
        .get();
    queryDevelopers.docs
        .map((queryDeveloper) =>
            developers.add(Developer.fromJson(queryDeveloper.data())))
        .toList();
    return developers;
  }
}
