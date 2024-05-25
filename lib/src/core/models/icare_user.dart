import 'package:freezed_annotation/freezed_annotation.dart';

part 'icare_user.g.dart';
part 'icare_user.freezed.dart';

@freezed
class ICareUser with _$ICareUser {
  const factory ICareUser({
    String? name,
    String? email,
    String? profileImage,
    String? uId,
    String? mobileToken,
  }) = _ICareUser;

  factory ICareUser.fromJson(Map<String, dynamic> json) =>
      _$ICareUserFromJson(json);
}
