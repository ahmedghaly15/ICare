import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_notification_params.g.dart';

@JsonSerializable()
class SendNotificationParams {
  final String to, body, title;
  final String? receiverId;
  final Timestamp? dateTime;
  final ICareUser? user;
  final CommentModel? comment, reply;
  final TinyTale? tinyTale;

  const SendNotificationParams({
    required this.to,
    required this.body,
    this.title = AppStrings.appTitle,
    this.receiverId,
    this.dateTime,
    this.user,
    this.comment,
    this.reply,
    this.tinyTale,
  });

  factory SendNotificationParams.fromJson(Map<String, dynamic> json) =>
      _$SendNotificationParamsFromJson(json);
  Map<String, dynamic> toJson() => _$SendNotificationParamsToJson(this);
}
