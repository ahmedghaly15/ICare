import 'package:json_annotation/json_annotation.dart';

part 'icare_user.g.dart';

@JsonSerializable()
class ICareUser {
  final String? name;
  final String? email;
  final String? profileImage;
  final String? uId;

  const ICareUser({
    this.name,
    this.email,
    this.uId,
    this.profileImage,
  });

  factory ICareUser.fromJson(Map<String, dynamic> json) =>
      _$ICareUserFromJson(json);

  Map<String, dynamic> toJson() => _$ICareUserToJson(this);
}
