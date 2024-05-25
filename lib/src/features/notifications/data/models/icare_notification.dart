import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/core/utils/app_strings.dart';
import 'package:icare/src/features/comments/data/models/comment_model.dart';
import 'package:icare/src/features/tiny_tales/data/models/tiny_tale.dart';

part 'icare_notification.g.dart';
part 'icare_notification.freezed.dart';

@freezed
class ICareNotification with _$ICareNotification {
  const factory ICareNotification({
    required String to,
    required String body,
    @Default(AppStrings.appTitle) String title,
    @Default(false) bool seen,
    String? receiverId,
    String? id,
    String? tinyTaleId,
    Timestamp? dateTime,
    ICareUser? user,
    CommentModel? comment,
    CommentModel? reply,
    TinyTale? tinyTale,
    bool? isMessage,
    bool? isComment,
  }) = _ICareNotification;

  factory ICareNotification.fromJson(Map<String, dynamic> json) =>
      _$ICareNotificationFromJson(json);
}
