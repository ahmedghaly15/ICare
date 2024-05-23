import 'package:json_annotation/json_annotation.dart';

part 'icare_user.g.dart';

@JsonSerializable()
class ICareUser {
  final String? name;
  final String? email;
  final String? profileImage;
  final String? uId;
  final String? mobileToken;

  const ICareUser({
    this.name,
    this.email,
    this.uId,
    this.profileImage,
    this.mobileToken,
  });

  factory ICareUser.fromJson(Map<String, dynamic> json) =>
      _$ICareUserFromJson(json);
  Map<String, dynamic> toJson() => _$ICareUserToJson(this);

  @override
  String toString() {
    return 'ICareUser(name: $name, email: $email, uId: $uId, profileImage: $profileImage, mobileToken: $mobileToken)';
  }
}
