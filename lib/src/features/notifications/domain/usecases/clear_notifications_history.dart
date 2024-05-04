import 'package:icare/src/core/models/no_params.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/notifications/data/repositories/notifications_repo.dart';

class ClearNotificationsHistoryUseCase
    implements FirebaseUseCase<void, NoParams> {
  final NotificationsRepo _notificationsRepo;

  const ClearNotificationsHistoryUseCase(this._notificationsRepo);

  @override
  Future<FirebaseRequestResult<void>> call(NoParams params) async {
    return await _notificationsRepo.clearNotificationsHistory();
  }
}
