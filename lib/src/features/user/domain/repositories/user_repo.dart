import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';

abstract class UserRepo {
  Future<FirebaseRequestResult<ICareUser>> getUserData();
  Future<FirebaseRequestResult<List<ICareUser>>> getAllUsers();
  Future<FirebaseRequestResult<void>> follow(ICareUser user);
  Future<FirebaseRequestResult<void>> unFollow(ICareUser user);
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowers(ICareUser user);
  Future<FirebaseRequestResult<List<ICareUser>>> getFollowing(ICareUser user);
  Future<FirebaseRequestResult<void>> signOut();
}
