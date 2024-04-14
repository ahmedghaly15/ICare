import 'package:json_annotation/json_annotation.dart';

part 'icare_user.g.dart';

@JsonSerializable()
class ICareUser {
  final String? name;
  final String? email;
  final String? profileImage;
  final String? password;
  final String? uId;

  const ICareUser({
    this.name,
    this.email,
    this.uId,
    this.profileImage,
    this.password,
  });

  factory ICareUser.fromJson(Map<String, dynamic> json) =>
      _$ICareUserFromJson(json);

  Map<String, dynamic> toJson() => _$ICareUserToJson(this);

  @override
  String toString() {
    return 'ICareUser{name: $name, email: $email, profileImage: $profileImage, uId: $uId, password: $password}';
  }
}
