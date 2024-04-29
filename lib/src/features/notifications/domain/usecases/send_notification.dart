import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/usecases/base_usecase.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/notifications/data/repositories/notifications_repo.dart';

class SendNotificationUseCase
    implements BaseUseCase<void, NotificationRequest> {
  final NotificationsRepo _notificationsRepo;

  const SendNotificationUseCase(this._notificationsRepo);

  @override
  Future<ApiResult<void>> call(NotificationRequest params) async {
    return await _notificationsRepo.sendNotifications(params);
  }
}
