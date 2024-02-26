import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/auth/data/models/create_firestore_user_params.dart';
import 'package:icare/src/features/auth/domain/repositories/register_repo.dart';

class CreateFirestoreUserUseCase
    implements BaseUseCases<FirebaseRequestResult, CreateFirestoreUserParams> {
  final RegisterRepo _registerRepo;

  const CreateFirestoreUserUseCase(this._registerRepo);

  @override
  Future<FirebaseRequestResult> call(CreateFirestoreUserParams params) async {
    return await _registerRepo.createFirestoreUser(params);
  }
}
