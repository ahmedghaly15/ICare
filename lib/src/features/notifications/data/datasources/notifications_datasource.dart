import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/api/api_service.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';

abstract class NotificationsDatasource {
  Future<void> sendNotification(NotificationRequest notificationRequest);
  Future<void> saveNotificationToFirebaseFirestore(ICareNotification params);
}

class NotificationsDatasourceImpl implements NotificationsDatasource {
  final ApiService _apiService;

  const NotificationsDatasourceImpl(this._apiService);

  @override
  Future<void> sendNotification(NotificationRequest notificationRequest) async {
    return await _apiService.sendNotification(notificationRequest);
  }

  @override
  Future<void> saveNotificationToFirebaseFirestore(
      ICareNotification params) async {
    final ICareNotification iCareNotification = ICareNotification(
      to: params.to,
      title: params.title,
      body: params.body,
      receiverId: params.receiverId,
      dateTime: Timestamp.now(),
      tinyTale: params.tinyTale,
      comment: params.comment,
      reply: params.reply,
      user: params.user,
      isMessage: params.isMessage ?? false,
      isComment: params.isComment ?? false,
      tinyTaleId: params.tinyTaleId,
    );
    final DocumentReference<Map<String, dynamic>> document = await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(params.receiverId)
        .collection(AppStrings.notificationsCollection)
        .add(iCareNotification.toJson());
    await document.update({'id': document.id});
  }
}
