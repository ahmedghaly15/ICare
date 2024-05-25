// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_firestore_user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateFirestoreUserParams {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get uId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFirestoreUserParamsCopyWith<CreateFirestoreUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFirestoreUserParamsCopyWith<$Res> {
  factory $CreateFirestoreUserParamsCopyWith(CreateFirestoreUserParams value,
          $Res Function(CreateFirestoreUserParams) then) =
      _$CreateFirestoreUserParamsCopyWithImpl<$Res, CreateFirestoreUserParams>;
  @useResult
  $Res call({String name, String email, String uId});
}

/// @nodoc
class _$CreateFirestoreUserParamsCopyWithImpl<$Res,
        $Val extends CreateFirestoreUserParams>
    implements $CreateFirestoreUserParamsCopyWith<$Res> {
  _$CreateFirestoreUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? uId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateFirestoreUserParamsImplCopyWith<$Res>
    implements $CreateFirestoreUserParamsCopyWith<$Res> {
  factory _$$CreateFirestoreUserParamsImplCopyWith(
          _$CreateFirestoreUserParamsImpl value,
          $Res Function(_$CreateFirestoreUserParamsImpl) then) =
      __$$CreateFirestoreUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String uId});
}

/// @nodoc
class __$$CreateFirestoreUserParamsImplCopyWithImpl<$Res>
    extends _$CreateFirestoreUserParamsCopyWithImpl<$Res,
        _$CreateFirestoreUserParamsImpl>
    implements _$$CreateFirestoreUserParamsImplCopyWith<$Res> {
  __$$CreateFirestoreUserParamsImplCopyWithImpl(
      _$CreateFirestoreUserParamsImpl _value,
      $Res Function(_$CreateFirestoreUserParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? uId = null,
  }) {
    return _then(_$CreateFirestoreUserParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uId: null == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateFirestoreUserParamsImpl implements _CreateFirestoreUserParams {
  const _$CreateFirestoreUserParamsImpl(
      {required this.name, required this.email, required this.uId});

  @override
  final String name;
  @override
  final String email;
  @override
  final String uId;

  @override
  String toString() {
    return 'CreateFirestoreUserParams(name: $name, email: $email, uId: $uId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFirestoreUserParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uId, uId) || other.uId == uId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, uId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFirestoreUserParamsImplCopyWith<_$CreateFirestoreUserParamsImpl>
      get copyWith => __$$CreateFirestoreUserParamsImplCopyWithImpl<
          _$CreateFirestoreUserParamsImpl>(this, _$identity);
}

abstract class _CreateFirestoreUserParams implements CreateFirestoreUserParams {
  const factory _CreateFirestoreUserParams(
      {required final String name,
      required final String email,
      required final String uId}) = _$CreateFirestoreUserParamsImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get uId;
  @override
  @JsonKey(ignore: true)
  _$$CreateFirestoreUserParamsImplCopyWith<_$CreateFirestoreUserParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
