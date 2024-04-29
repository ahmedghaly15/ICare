import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/dependency_injection.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/notifications/domain/usecases/send_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final SendNotificationUseCase _sendNotificationUseCase;

  NotificationsCubit(
    this._sendNotificationUseCase,
  ) : super(const NotificationsState.initial());

  void sendNotification(NotificationRequest notificationRequest) async {
    final result = await _sendNotificationUseCase.call(notificationRequest);
    result.when(
      success: (_) async {
        await _saveNotificationToFirebaseFirestore(notificationRequest);
        emit(const NotificationsState.sendNotificationSuccess());
      },
      error: (error) => emit(NotificationsState.sendNotificationError(
          error.apiErrorModel.error ?? '')),
    );
  }

  Future<void> _saveNotificationToFirebaseFirestore(
    NotificationRequest notificationRequest,
  ) async {
    await getIt
        .get<FirebaseFirestore>()
        .collection(AppStrings.usersCollection)
        .doc(notificationRequest.receiverId)
        .collection(AppStrings.notificationsCollection)
        .add(notificationRequest.notification.toJson());
  }
}
