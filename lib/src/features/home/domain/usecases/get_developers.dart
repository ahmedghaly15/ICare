import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/home/data/models/developer.dart';
import 'package:icare/src/features/home/data/repositories/home_repo.dart';

class GetDevelopersUseCase
    implements FirebaseUseCase<List<Developer>, NoParams> {
  final HomeRepo _homeRepo;

  const GetDevelopersUseCase(this._homeRepo);

  @override
  Future<FirebaseRequestResult<List<Developer>>> call(NoParams params) async {
    return await _homeRepo.getDevelopers();
  }
}
