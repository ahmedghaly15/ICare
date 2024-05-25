// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthRequestParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthRequestParamsCopyWith<AuthRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthRequestParamsCopyWith<$Res> {
  factory $AuthRequestParamsCopyWith(
          AuthRequestParams value, $Res Function(AuthRequestParams) then) =
      _$AuthRequestParamsCopyWithImpl<$Res, AuthRequestParams>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthRequestParamsCopyWithImpl<$Res, $Val extends AuthRequestParams>
    implements $AuthRequestParamsCopyWith<$Res> {
  _$AuthRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthRequestParamsImplCopyWith<$Res>
    implements $AuthRequestParamsCopyWith<$Res> {
  factory _$$AuthRequestParamsImplCopyWith(_$AuthRequestParamsImpl value,
          $Res Function(_$AuthRequestParamsImpl) then) =
      __$$AuthRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthRequestParamsImplCopyWithImpl<$Res>
    extends _$AuthRequestParamsCopyWithImpl<$Res, _$AuthRequestParamsImpl>
    implements _$$AuthRequestParamsImplCopyWith<$Res> {
  __$$AuthRequestParamsImplCopyWithImpl(_$AuthRequestParamsImpl _value,
      $Res Function(_$AuthRequestParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthRequestParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthRequestParamsImpl implements _AuthRequestParams {
  const _$AuthRequestParamsImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthRequestParams(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRequestParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRequestParamsImplCopyWith<_$AuthRequestParamsImpl> get copyWith =>
      __$$AuthRequestParamsImplCopyWithImpl<_$AuthRequestParamsImpl>(
          this, _$identity);
}

abstract class _AuthRequestParams implements AuthRequestParams {
  const factory _AuthRequestParams(
      {required final String email,
      required final String password}) = _$AuthRequestParamsImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthRequestParamsImplCopyWith<_$AuthRequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
