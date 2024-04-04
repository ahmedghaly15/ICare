import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/search/data/repositories/search_repo.dart';

class SearchUsersUseCase implements FirebaseUseCase<List<ICareUser>, String> {
  final SearchRepo _searchRepo;

  const SearchUsersUseCase(this._searchRepo);

  @override
  Future<FirebaseRequestResult<List<ICareUser>>> call(String params) async {
    return await _searchRepo.searchUsers(params);
  }
}
