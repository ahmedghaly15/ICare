import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState<T> with _$NotificationsState<T> {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.sendNotificationSuccess() =
      _SendNotificationSuccess;
  const factory NotificationsState.sendNotificationError(String error) =
      _SendNotificationError<T>;
  const factory NotificationsState.clearNotificationsHistorySuccess() =
      _ClearNotificationsHistorySuccess;
  const factory NotificationsState.clearNotificationsHistoryError(
      String error) = _ClearNotificationsHistoryError<T>;
  const factory NotificationsState.saveNotificationsToFirebaseSuccess() =
      _SaveNotificationsToFirebaseSuccess;
  const factory NotificationsState.saveNotificationsToFirebaseError(
      String error) = _SaveNotificationsToFirebaseError<T>;
  const factory NotificationsState.deleteNotificationSuccess() =
      _DeleteNotificationSuccess;
  const factory NotificationsState.deleteNotificationError(String error) =
      _DeleteNotificationError<T>;
}
