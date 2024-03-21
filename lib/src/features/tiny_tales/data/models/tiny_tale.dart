import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tiny_tale.g.dart';

@JsonSerializable()
class TinyTale {
  final ICareUser? user;
  final String? postId;
  final String? time;
  final String? date;
  final Timestamp? dateTime;
  final String? text;
  final String? tinyTaleImage;

  const TinyTale({
    this.user,
    this.postId,
    this.time,
    this.date,
    this.dateTime,
    this.text,
    this.tinyTaleImage,
  });

  factory TinyTale.fromJson(Map<String, dynamic> json) =>
      $TinyTaleFromJson(json);

  Map<String, dynamic> toJson() => $TinyTaleToJson(this);
}
