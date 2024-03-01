import 'package:icare/src/core/firebase/firebase_request_result.dart';

abstract class FirebaseUseCase<Type, Params> {
  Future<FirebaseRequestResult<Type>> call(Params params);
}
