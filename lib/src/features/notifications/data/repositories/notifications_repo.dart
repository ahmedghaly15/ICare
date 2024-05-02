import 'package:icare/src/core/api/api_result.dart';
import 'package:icare/src/core/firebase/firebase_request_result.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_errors.dart';
import 'package:icare/src/core/utils/functions/execute_and_handle_firebase_errors.dart';
import 'package:icare/src/features/notifications/data/datasources/notifications_datasource.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';

class NotificationsRepo {
  final NotificationsDatasource _notificationsDatasource;

  const NotificationsRepo(this._notificationsDatasource);

  Future<ApiResult<void>> sendNotifications(
    NotificationRequest notificationRequest,
  ) {
    return executeAndHandleErrors<void>(
      () async =>
          await _notificationsDatasource.sendNotification(notificationRequest),
    );
  }

  Future<FirebaseRequestResult<void>> saveNotificationToFirebaseFirestore(
    ICareNotification params,
  ) {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _notificationsDatasource
          .saveNotificationToFirebaseFirestore(params),
    );
  }

  Future<FirebaseRequestResult<void>> clearNotificationsHistory() {
    return executeAndHandleFirebaseErrors<void>(
      () async => await _notificationsDatasource.clearNotificationsHistory(),
    );
  }
}
