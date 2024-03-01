import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/user/data/repositories/user_repo.dart';

class GetUserDataUseCase
    implements
        FirebaseUseCase<DocumentSnapshot<Map<String, dynamic>>, NoParams> {
  final UserRepo _userRepo;

  const GetUserDataUseCase(this._userRepo);

  @override
  Future<FirebaseRequestResult<DocumentSnapshot<Map<String, dynamic>>>> call(
      NoParams params) async {
    return await _userRepo.getUserData();
  }
}
