import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_request.g.dart';

@JsonSerializable()
class NotificationRequest {
  final String to;
  final String? receiverId;
  final ICareNotification notification;

  const NotificationRequest({
    required this.to,
    required this.notification,
    this.receiverId,
  });

  factory NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationRequestToJson(this);
}

@JsonSerializable()
class ICareNotification {
  final String title, body;
  // final Timestamp? dateTime;

  const ICareNotification({
    required this.title,
    required this.body,
    // this.dateTime,
  });

  factory ICareNotification.fromJson(Map<String, dynamic> json) =>
      _$ICareNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ICareNotificationToJson(this);
}
