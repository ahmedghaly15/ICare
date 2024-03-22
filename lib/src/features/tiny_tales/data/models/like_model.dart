import 'package:icare/src/core/models/icare_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'like_model.g.dart';

@JsonSerializable()
class LikeModel {
  final ICareUser? user;
  final String? dateTime;

  const LikeModel({
    this.user,
    this.dateTime,
  });

  factory LikeModel.fromJson(Map<String, dynamic> json) =>
      _$LikeModelFromJson(json);
  Map<String, dynamic> toJson() => _$LikeModelToJson(this);
}
