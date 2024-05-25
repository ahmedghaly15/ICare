import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_request.g.dart';
part 'notification_request.freezed.dart';

@freezed
class NotificationRequest with _$NotificationRequest {
  const factory NotificationRequest({
    required String to,
    required NotificationContent notification,
  }) = _NotificationRequest;

  factory NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestFromJson(json);
}

@freezed
class NotificationContent with _$NotificationContent {
  const factory NotificationContent({
    required String title,
    required String body,
  }) = _NotificationContent;

  factory NotificationContent.fromJson(Map<String, dynamic> json) =>
      _$NotificationContentFromJson(json);
}
