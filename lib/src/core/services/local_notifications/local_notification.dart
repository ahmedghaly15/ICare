import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification.freezed.dart';

@freezed
class LocalNotification with _$LocalNotification {
  const factory LocalNotification({
    required String title,
    required String body,
  }) = _LocalNotification;
}
