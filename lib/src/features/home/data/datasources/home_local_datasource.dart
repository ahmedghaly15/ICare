import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/home/data/models/developer.dart';

abstract class HomeLocalDatasource {
  Future<bool> cacheDevelopers(List<Developer> developers);
  String? cachedDevelopersJson();
  List<Developer> retrieveCachedDevelopers();
}

class HomeLocalDatasourceImpl implements HomeLocalDatasource {
  const HomeLocalDatasourceImpl();

  @override
  Future<bool> cacheDevelopers(List<Developer> developers) {
    return getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedDevelopers,
          value: json.encode(developers.map((e) => e.toJson()).toList()),
        );
  }

  @override
  String? cachedDevelopersJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.cachedDevelopers);
  }

  @override
  List<Developer> retrieveCachedDevelopers() {
    final List<Developer> developers = <Developer>[];

    for (final developer in json.decode(cachedDevelopersJson()!)) {
      developers.add(Developer.fromJson(developer));
    }
    return developers;
  }
}
