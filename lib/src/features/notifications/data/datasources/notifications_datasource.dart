import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';

abstract class NotificationsDatasource {
  Future<void> sendNotification(NotificationRequest notificationRequest);
}

class NotificationsDatasourceImpl implements NotificationsDatasource {
  final ApiService _apiService;

  const NotificationsDatasourceImpl(this._apiService);

  @override
  Future<void> sendNotification(NotificationRequest notificationRequest) async {
    return await _apiService.sendNotification(notificationRequest);
  }
}
