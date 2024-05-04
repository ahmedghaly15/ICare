import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/notifications/data/repositories/notifications_repo.dart';

class DeleteNotificationUseCase implements FirebaseUseCase<void, String> {
  final NotificationsRepo _notificationsRepo;

  const DeleteNotificationUseCase(this._notificationsRepo);

  @override
  Future<FirebaseRequestResult<void>> call(String params) async {
    return await _notificationsRepo.deleteNotification(params);
  }
}
