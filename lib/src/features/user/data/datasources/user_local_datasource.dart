import 'dart:convert';

import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserLocalDatasource {
  Future<bool> cacheUser(ICareUser user);
  ICareUser getCachedUser();
  String? userJson();
  Future<bool> cacheCurrentUserFollowers(List<ICareUser> followers);
  List<ICareUser> getCachedCurrentUserFollowers();
  String? currentUserFollowersJson();
  Future<bool> cacheCurrentUserFollowing(List<ICareUser> following);
  List<ICareUser> getCachedCurrentUserFollowing();
  String? currentUserFollowingJson();
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
    return ICareUser.fromJson(json.decode(userJson()!));
  }

  @override
  String? userJson() {
    return getIt.get<CacheHelper>().getStringData(key: AppStrings.cachedUser);
  }

  @override
  Future<bool> cacheCurrentUserFollowers(
    List<ICareUser> followers,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.currentUserCachedFollowers,
          value: json.encode(
            followers.map((follower) => follower.toJson()).toList(),
          ),
        );
  }

  @override
  String? currentUserFollowersJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.currentUserCachedFollowers);
  }

  @override
  List<ICareUser> getCachedCurrentUserFollowers() {
    final List<ICareUser> followers = <ICareUser>[];
    for (final follower in json.decode(currentUserFollowersJson()!)) {
      followers.add(ICareUser.fromJson(follower));
    }
    return followers;
  }

  @override
  Future<bool> cacheCurrentUserFollowing(
    List<ICareUser> following,
  ) async {
    return await getIt.get<CacheHelper>().saveData(
          key: AppStrings.currentUserCachedFollowing,
          value: json.encode(
            following.map((following) => following.toJson()).toList(),
          ),
        );
  }

  @override
  String? currentUserFollowingJson() {
    return getIt
        .get<CacheHelper>()
        .getStringData(key: AppStrings.currentUserCachedFollowing);
  }

  @override
  List<ICareUser> getCachedCurrentUserFollowing() {
    final List<ICareUser> following = <ICareUser>[];
    for (final followingUser in json.decode(currentUserFollowingJson()!)) {
      following.add(ICareUser.fromJson(followingUser));
    }
    return following;
  }
}
