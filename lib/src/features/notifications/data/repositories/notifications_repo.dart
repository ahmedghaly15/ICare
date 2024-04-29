import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/features/notifications/data/datasources/notifications_datasource.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';

class NotificationsRepo {
  final NotificationsDatasource _notificationsDatasource;

  const NotificationsRepo(this._notificationsDatasource);

  Future<ApiResult<void>> sendNotifications(
    NotificationRequest notificationRequest,
  ) async {
    return executeAndHandleErrors<void>(
      () async =>
          await _notificationsDatasource.sendNotification(notificationRequest),
    );
  }
}
