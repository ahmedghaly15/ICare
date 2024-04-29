import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/cache_helper.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';

abstract class UserRemoteDataSource {
  Future<ICareUser> getUserData();
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers();
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowers(ICareUser user);
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowing(ICareUser user);
  Future<void> follow(ICareUser user);
  Future<void> unFollow(ICareUser user);
  Future<void> signOut();
}

class UserRemoteDatasourceImpl implements UserRemoteDataSource {
  const UserRemoteDatasourceImpl();

  @override
  Future<ICareUser> getUserData() async {
    final DocumentSnapshot<Map<String, dynamic>> documentSnapshot =
        await accessUsersCollection().doc(Helper.uId).get();

    return ICareUser.fromJson(documentSnapshot.data()!);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers() async {
    return await accessUsersCollection().get();
  }

  @override
  Future<void> follow(ICareUser user) async {
    _addCurrentUserToOthersFollowers(user).then((value) {
      _addUserToFollowing(user);
    });
  }

  Future<void> _addCurrentUserToOthersFollowers(ICareUser user) async {
    return await accessUserFollowersCollection(user.uId!)
        .doc(Helper.uId)
        .set(Helper.currentUser!.toJson());
  }

  Future<void> _addUserToFollowing(ICareUser user) async {
    return await accessUserFollowingCollection(Helper.uId!)
        .doc(user.uId)
        .set(user.toJson());
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowers(
      ICareUser user) async {
    return await accessUserFollowersCollection(user.uId!).get();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowing(
      ICareUser user) async {
    return await accessUserFollowingCollection(user.uId!).get();
  }

  @override
  Future<void> unFollow(ICareUser user) async {
    await _removeCurrentUserToOthersFollowers(user);
    await _removeUserToFollowing(user);
  }

  Future<void> _removeCurrentUserToOthersFollowers(ICareUser user) async {
    return await accessUserFollowersCollection(user.uId!)
        .doc(Helper.uId)
        .delete();
  }

  Future<void> _removeUserToFollowing(ICareUser user) async {
    return await accessUserFollowingCollection(Helper.uId!)
        .doc(user.uId)
        .delete();
  }

  @override
  Future<void> signOut() async {
    await getIt.get<CacheHelper>().clearPreferencesExcept(
      <KeyAndType>[
        const KeyAndType(AppStrings.cachedOnboarding, 'bool'),
        const KeyAndType(AppStrings.cachedTheme, 'int'),
        KeyAndType('${AppStrings.cachedIsDone}${Helper.uId}', 'bool'),
        KeyAndType('${AppStrings.cachedRandomTip}${Helper.uId}', 'String'),
      ],
    );
    await getIt.get<FirebaseAuth>().signOut();
  }
}
