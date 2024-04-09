import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserLocalDatasource {
  Future<bool> cacheUser(ICareUser user);
  ICareUser getCachedUser();
  String? userJson();

  //TODO: remember to cache following and followers
}

class UserLocalDatasourceImpl implements UserLocalDatasource {
  const UserLocalDatasourceImpl();

  @override
  Future<bool> cacheUser(ICareUser user) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.cachedUser,
          value: json.encode(user.toJson()),
        );
  }

  @override
  ICareUser getCachedUser() {
    if (userJson() != null) {
      return ICareUser.fromJson(json.decode(userJson()!));
    } else {
      throw Exception('Failed to get user from cache');
    }
  }

  @override
  String? userJson() {
    return getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedUser);
  }
}
