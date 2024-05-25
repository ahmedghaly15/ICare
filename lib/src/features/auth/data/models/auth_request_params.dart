import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_params.freezed.dart';

@freezed
class AuthRequestParams with _$AuthRequestParams {
  const factory AuthRequestParams({
    required String email,
    required String password,
  }) = _AuthRequestParams;
}
