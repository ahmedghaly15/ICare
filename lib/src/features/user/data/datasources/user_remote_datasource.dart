import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';

abstract class UserRemoteDataSource {
  Future<ICareUser> getUserData();
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers();
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowers();
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowing();
  Future<void> follow(ICareUser user);
  Future<void> unFollow(ICareUser user);
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
  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers() async {
    return await _accessUsersCollection().get();
  }

  @override
  Future<void> follow(ICareUser user) async {
    await _addUserToFollowing(user);
    await _addCurrentUserToOthersFollowers(user);
  }

  Future<void> _addCurrentUserToOthersFollowers(ICareUser user) async {
    return await _accessFollowersCollection(user)
        .doc(Helper.uId)
        .set(Helper.currentUser!.toJson());
  }

  Future<void> _addUserToFollowing(ICareUser user) async {
    return await _accessFollowingCollection().doc(user.uId).set(user.toJson());
  }

  CollectionReference<Map<String, dynamic>> _accessFollowingCollection() {
    return _accessUsersCollection()
        .doc(Helper.uId)
        .collection(AppStrings.followingCollection);
  }

  CollectionReference<Map<String, dynamic>> _accessFollowersCollection(
      ICareUser user) {
    return _accessUsersCollection()
        .doc(user.uId)
        .collection(AppStrings.followersCollection);
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowers() async {
    return await _accessFollowersCollection(Helper.currentUser!).get();
  }

  @override
  Future<QuerySnapshot<Map<String, dynamic>>> getFollowing() async {
    return await _accessFollowingCollection().get();
  }

  @override
  Future<void> unFollow(ICareUser user) async {
    await _removeUserToFollowing(user);
    await _removeCurrentUserToOthersFollowers(user);
  }

  Future<void> _removeCurrentUserToOthersFollowers(ICareUser user) async {
    return await _accessFollowersCollection(user).doc(Helper.uId).delete();
  }

  Future<void> _removeUserToFollowing(ICareUser user) async {
    return await _accessFollowingCollection().doc(user.uId).delete();
  }
}
