import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/usecases/firebase_usecase.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/data/repositories/notifications_repo.dart';

class SaveNotificationsToFirebaseFirestoreUseCase
    implements FirebaseUseCase<void, ICareNotification> {
  final NotificationsRepo _notificationsRepo;

  const SaveNotificationsToFirebaseFirestoreUseCase(this._notificationsRepo);

  @override
  Future<FirebaseRequestResult<void>> call(ICareNotification params) async {
    return await _notificationsRepo.saveNotificationToFirebaseFirestore(params);
  }
}
