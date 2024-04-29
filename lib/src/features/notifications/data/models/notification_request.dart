import 'package:json_annotation/json_annotation.dart';

part 'notification_request.g.dart';

@JsonSerializable()
class NotificationRequest {
  final String to;
  final ICareNotification notification;

  const NotificationRequest({
    required this.to,
    required this.notification,
  });

  factory NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationRequestToJson(this);
}

@JsonSerializable()
class ICareNotification {
  final String title, body;

  const ICareNotification({
    required this.title,
    required this.body,
  });

  factory ICareNotification.fromJson(Map<String, dynamic> json) =>
      _$ICareNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ICareNotificationToJson(this);
}
