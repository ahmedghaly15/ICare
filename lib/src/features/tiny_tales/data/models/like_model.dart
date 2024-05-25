import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icare/src/core/models/icare_user.dart';

part 'like_model.g.dart';
part 'like_model.freezed.dart';

@freezed
class LikeModel with _$LikeModel {
  const factory LikeModel({
    ICareUser? user,
    String? dateTime,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> json) =>
      _$LikeModelFromJson(json);
}
