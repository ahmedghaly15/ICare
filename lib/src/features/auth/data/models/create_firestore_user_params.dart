import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_firestore_user_params.freezed.dart';

@freezed
class CreateFirestoreUserParams with _$CreateFirestoreUserParams {
  const factory CreateFirestoreUserParams({
    required String name,
    required String email,
    required String uId,
  }) = _CreateFirestoreUserParams;
}
