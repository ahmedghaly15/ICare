import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_params.freezed.dart';

@freezed
class UpdateUserParams with _$UpdateUserParams {
  const factory UpdateUserParams({
    String? name,
    String? email,
    String? profileImage,
    String? password,
    String? uId,
  }) = _UpdateUserParams;
}
