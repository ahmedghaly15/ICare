import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_notification_params.g.dart';

@JsonSerializable()
class SendNotificationParams {
  final String to, body, title;
  final String? receiverId;
  final Timestamp? dateTime;

  const SendNotificationParams({
    required this.to,
    required this.body,
    this.title = AppStrings.appTitle,
    this.receiverId,
    this.dateTime,
  });

  factory SendNotificationParams.fromJson(Map<String, dynamic> json) =>
      _$SendNotificationParamsFromJson(json);
  Map<String, dynamic> toJson() => _$SendNotificationParamsToJson(this);
}
