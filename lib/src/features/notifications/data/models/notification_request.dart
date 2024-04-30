import 'package:json_annotation/json_annotation.dart';

part 'notification_request.g.dart';

@JsonSerializable()
class NotificationRequest {
  final String to;
  final NotificationContent notification;

  const NotificationRequest({
    required this.to,
    required this.notification,
  });

  factory NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationRequestToJson(this);
}

@JsonSerializable()
class NotificationContent {
  final String title, body;

  const NotificationContent({
    required this.title,
    required this.body,
  });

  factory NotificationContent.fromJson(Map<String, dynamic> json) =>
      _$NotificationContentFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationContentToJson(this);
}
