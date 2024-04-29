import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.freezed.dart';

@freezed
class NotificationsState<T> with _$NotificationsState<T> {
  const factory NotificationsState.initial() = _Initial;
  const factory NotificationsState.sendNotificationSuccess() =
      _SendNotificationSuccess;
  const factory NotificationsState.sendNotificationError(String error) =
      _SendNotificationError<T>;
}
