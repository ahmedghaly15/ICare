import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/notifications/data/models/send_notification_params.dart';
import 'package:icare/src/features/notifications/domain/usecases/send_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final SendNotificationUseCase _sendNotificationUseCase;

  NotificationsCubit(
    this._sendNotificationUseCase,
  ) : super(const NotificationsState.initial());

  Future<void> sendNotification(SendNotificationParams params) async {
    final NotificationRequest notificationRequest = NotificationRequest(
      to: params.to,
      notification: ICareNotification(
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
    SendNotificationParams params,
  ) async {
    final SendNotificationParams sendNotificationParams =
        SendNotificationParams(
      to: params.to,
      title: params.title,
      body: params.body,
      receiverId: params.receiverId,
      dateTime: Timestamp.now(),
      tinyTale: params.tinyTale,
      comment: params.comment,
      reply: params.reply,
      user: params.user,
    );
    await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(params.receiverId)
        .collection(AppStrings.notificationsCollection)
        .add(sendNotificationParams.toJson());
  }
}
