import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/people_who_liked/data/repositories/people_who_liked_repo.dart';

class GetPeopleWhoLikedUseCase
    implements FirebaseUseCase<List<ICareUser>, String> {
  final PeopleWhoLikedRepo _peopleWhoLikedRepo;

  const GetPeopleWhoLikedUseCase(this._peopleWhoLikedRepo);

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> call(String params) async {
    return _peopleWhoLikedRepo.getPeopleWhoLiked(params);
  }
}
