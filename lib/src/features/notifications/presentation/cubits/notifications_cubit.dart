import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/helpers/helper.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/domain/usecases/send_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final SendNotificationUseCase _sendNotificationUseCase;

  NotificationsCubit(
    this._sendNotificationUseCase,
  ) : super(const NotificationsState.initial());

  Future<void> sendNotification(ICareNotification params) async {
    final NotificationRequest notificationRequest = NotificationRequest(
      to: params.to,
      notification: NotificationContent(
        title: params.title,
        body: params.body,
      ),
    );
    final result = await _sendNotificationUseCase.call(notificationRequest);
    result.when(
      success: (_) {
        emit(const NotificationsState.sendNotificationSuccess());
        _saveNotificationToFirebaseFirestore(params);
      },
      error: (error) => emit(NotificationsState.sendNotificationError(
          error.apiErrorModel.error ?? '')),
    );
  }

  void _saveNotificationToFirebaseFirestore(
    ICareNotification params,
  ) async {
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
    );
    final DocumentReference<Map<String, dynamic>> document = await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(params.receiverId)
        .collection(AppStrings.notificationsCollection)
        .add(iCareNotification.toJson());
    await document.update({'id': document.id});
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamNotifications() {
    return accessUsersCollection()
        .doc(Helper.uId)
        .collection(AppStrings.notificationsCollection)
        .orderBy(
          AppStrings.dateTime,
          descending: true,
        )
        .snapshots();
  }

  Stream<bool> isTheirNotSeenNotification() {
    return streamNotifications()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      for (final doc in snapshot.docs) {
        if (doc.data()['seen'] == false) {
          return true;
        }
      }
      return false;
    });
  }
}
