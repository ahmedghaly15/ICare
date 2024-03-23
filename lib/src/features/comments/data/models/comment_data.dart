import 'package:json_annotation/json_annotation.dart';

part 'comment_data.g.dart';

@JsonSerializable()
class CommentData {
  final Map<String, dynamic>? commentImage;
  final String? commentText;
  final String? time;
  final String? date;
  final String? commentId;

  const CommentData({
    this.commentImage,
    this.commentText,
    this.time,
    this.date,
    this.commentId,
  });

  factory CommentData.fromJson(Map<String, dynamic> json) =>
      _$CommentDataFromJson(json);
  Map<String, dynamic> toJson() => _$CommentDataToJson(this);
}
