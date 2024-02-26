import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/models/user_model.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';
import 'package:icare/src/features/auth/data/models/register_request_params.dart';

abstract class RegisterDataSource {
  Future<UserCredential> register(RegisterRequestParams params);

  Future<void> createFirestoreUser(CreateFirestoreUserParams params);
}

class RegisterDataSourceImpl implements RegisterDataSource {
  @override
  Future<UserCredential> register(RegisterRequestParams params) async {
    return await getIt.get<FirebaseAuth>().createUserWithEmailAndPassword(
          email: params.email,
          password: params.password,
        );
  }

  @override
  Future<void> createFirestoreUser(CreateFirestoreUserParams params) async {
    final UserModel user = UserModel(
      name: params.name,
      email: params.email,
      uId: params.uId,
    );

    await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(params.uId)
        .set(user.toJson());
  }
}
