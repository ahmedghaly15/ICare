import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/entities/no_params.dart';
import 'package:icare/src/core/usecases/regular_usecase.dart';
import 'package:icare/src/features/user/data/repositories/user_repo.dart';

class GetUserDataUseCase
    implements
        RegularUseCase<Stream<DocumentSnapshot<Map<String, dynamic>>>,
            NoParams> {
  final UserRepo _userRepo;

  const GetUserDataUseCase(this._userRepo);

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> call(
    NoParams params,
  ) {
    return _userRepo.getUserData();
  }
}
