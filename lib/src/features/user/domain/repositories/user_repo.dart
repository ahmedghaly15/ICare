import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';

abstract class UserRepo {
  Future<FirebaseRequestResult<ICareUser>> getUserData();
  Future<FirebaseRequestResult<List<ICareUser>>> getAllUsers();
  Future<FirebaseRequestResult<void>> follow(ICareUser user);
  Future<FirebaseRequestResult<void>> unFollow(ICareUser user);
  Future<FirebaseRequestResult<QuerySnapshot<Map<String, dynamic>>>>
      getFollowers();
  Future<FirebaseRequestResult<QuerySnapshot<Map<String, dynamic>>>>
      getFollowing();
}
