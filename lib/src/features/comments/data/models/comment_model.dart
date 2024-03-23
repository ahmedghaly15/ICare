import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:icare/src/core/models/icare_user.dart';
import 'package:icare/src/features/comments/data/models/comment_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel {
  final ICareUser? user;
  final CommentData? commentData;
  final Timestamp? dateTime;

  const CommentModel({
    this.user,
    this.commentData,
    this.dateTime,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}
