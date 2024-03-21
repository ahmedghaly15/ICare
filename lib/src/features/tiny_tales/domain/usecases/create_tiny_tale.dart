import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/tiny_tales/data/models/create_tiny_tale_params.dart';
import 'package:icare/src/features/tiny_tales/domain/repositories/tiny_tales_repo.dart';

class CreateTinyTaleUseCase
    implements
        FirebaseUseCase<DocumentReference<Map<String, dynamic>>,
            CreateTinyTaleParams> {
  final TinyTalesRepo _tinyTalesRepo;

  const CreateTinyTaleUseCase(this._tinyTalesRepo);

  @override
  Future<FirebaseRequestResult<DocumentReference<Map<String, dynamic>>>> call(
    CreateTinyTaleParams params,
  ) async {
    return await _tinyTalesRepo.createTinyTale(params);
  }
}
