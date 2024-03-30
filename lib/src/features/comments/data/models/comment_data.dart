import 'package:json_annotation/json_annotation.dart';

part 'comment_data.g.dart';

@JsonSerializable()
class CommentData {
  final String? commentImage;
  final String? commentText;
  final String? time;
  final String? date;

  const CommentData({
    this.commentImage,
    this.commentText,
    this.time,
    this.date,
  });

  factory CommentData.fromJson(Map<String, dynamic> json) =>
      _$CommentDataFromJson(json);
  Map<String, dynamic> toJson() => _$CommentDataToJson(this);
}
