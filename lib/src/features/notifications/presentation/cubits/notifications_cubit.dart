import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/config/router/app_router.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/core/utils/functions/access_collections.dart';
import 'package:icare/src/features/comments/data/models/comment_replies_view_params.dart';
import 'package:icare/src/features/notifications/data/models/notification_request.dart';
import 'package:icare/src/features/notifications/data/models/icare_notification.dart';
import 'package:icare/src/features/notifications/domain/usecases/save_notifications_to_firebase_firestore.dart';
import 'package:icare/src/features/notifications/domain/usecases/send_notification.dart';
import 'package:icare/src/features/notifications/presentation/cubits/notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final SendNotificationUseCase sendNotificationUseCase;
  final SaveNotificationsToFirebaseFirestoreUseCase
      saveNotificationsToFirebaseFirestoreUseCase;

  NotificationsCubit({
    required this.sendNotificationUseCase,
    required this.saveNotificationsToFirebaseFirestoreUseCase,
  }) : super(const NotificationsState.initial());

  Future<void> sendNotification(ICareNotification params) async {
    final NotificationRequest notificationRequest = NotificationRequest(
      to: params.to,
      notification: NotificationContent(
        title: params.title,
        body: params.body,
      ),
    );
    final result = await sendNotificationUseCase.call(notificationRequest);
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
    await saveNotificationsToFirebaseFirestoreUseCase.call(params);
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamNotifications() {
    return accessCurrentUserNotificationsCollection()
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

  void readNotification(String notificationId) async {
    await accessCurrentUserNotificationsCollection()
        .doc(notificationId)
        .update({'seen': true});
  }

  void navigateToNotificationView(
      BuildContext context, ICareNotification notification) {
    if (notification.isMessage!) {
      context.pushRoute(ChatDetailsRoute(receiver: notification.user!));
    } else if (notification.isComment!) {
      context.pushRoute(CommentsRoute(tinyTale: notification.tinyTale!));
    } else {
      if (notification.tinyTale != null) {
        context.pushRoute(
          NotificationTinyTaleRoute(tinyTale: notification.tinyTale!),
        );
      } else if (notification.comment != null) {
        context.pushRoute(
          NotificationCommentRoute(
            params: CommentRepliesViewParams(
              comment: notification.comment!,
              tinyTaleId: notification.tinyTaleId,
            ),
          ),
        );
      } else if (notification.reply != null) {
        context.pushRoute(
          NotificationReplyRoute(
            reply: notification.reply!,
            params: CommentRepliesViewParams(
              comment: notification.comment!,
              tinyTaleId: notification.tinyTaleId,
            ),
          ),
        );
      }
    }
  }
}
