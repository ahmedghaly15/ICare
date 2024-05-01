import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';
import 'package:json_annotation/json_annotation.dart';

part 'icare_notification.g.dart';

@JsonSerializable()
class ICareNotification {
  final String to, body, title;
  final String? receiverId, id, tinyTaleId;
  final Timestamp? dateTime;
  final ICareUser? user;
  final CommentModel? comment, reply;
  final TinyTale? tinyTale;
  final bool seen;
  final bool? isMessage;
  final bool? isComment;

  const ICareNotification({
    required this.to,
    required this.body,
    this.title = AppStrings.appTitle,
    this.id,
    this.receiverId,
    this.tinyTaleId,
    this.dateTime,
    this.user,
    this.comment,
    this.reply,
    this.tinyTale,
    this.seen = false,
    this.isMessage,
    this.isComment,
  });

  factory ICareNotification.fromJson(Map<String, dynamic> json) =>
      _$ICareNotificationFromJson(json);
  Map<String, dynamic> toJson() => _$ICareNotificationToJson(this);
}
