// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icare_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ICareUser _$ICareUserFromJson(Map<String, dynamic> json) {
  return _ICareUser.fromJson(json);
}

/// @nodoc
mixin _$ICareUser {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  String? get uId => throw _privateConstructorUsedError;
  String? get mobileToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ICareUserCopyWith<ICareUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ICareUserCopyWith<$Res> {
  factory $ICareUserCopyWith(ICareUser value, $Res Function(ICareUser) then) =
      _$ICareUserCopyWithImpl<$Res, ICareUser>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? profileImage,
      String? uId,
      String? mobileToken});
}

/// @nodoc
class _$ICareUserCopyWithImpl<$Res, $Val extends ICareUser>
    implements $ICareUserCopyWith<$Res> {
  _$ICareUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? uId = freezed,
    Object? mobileToken = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      uId: freezed == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileToken: freezed == mobileToken
          ? _value.mobileToken
          : mobileToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ICareUserImplCopyWith<$Res>
    implements $ICareUserCopyWith<$Res> {
  factory _$$ICareUserImplCopyWith(
          _$ICareUserImpl value, $Res Function(_$ICareUserImpl) then) =
      __$$ICareUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? profileImage,
      String? uId,
      String? mobileToken});
}

/// @nodoc
class __$$ICareUserImplCopyWithImpl<$Res>
    extends _$ICareUserCopyWithImpl<$Res, _$ICareUserImpl>
    implements _$$ICareUserImplCopyWith<$Res> {
  __$$ICareUserImplCopyWithImpl(
      _$ICareUserImpl _value, $Res Function(_$ICareUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? uId = freezed,
    Object? mobileToken = freezed,
  }) {
    return _then(_$ICareUserImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      uId: freezed == uId
          ? _value.uId
          : uId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileToken: freezed == mobileToken
          ? _value.mobileToken
          : mobileToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ICareUserImpl implements _ICareUser {
  const _$ICareUserImpl(
      {this.name, this.email, this.profileImage, this.uId, this.mobileToken});

  factory _$ICareUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ICareUserImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? profileImage;
  @override
  final String? uId;
  @override
  final String? mobileToken;

  @override
  String toString() {
    return 'ICareUser(name: $name, email: $email, profileImage: $profileImage, uId: $uId, mobileToken: $mobileToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ICareUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.uId, uId) || other.uId == uId) &&
            (identical(other.mobileToken, mobileToken) ||
                other.mobileToken == mobileToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, profileImage, uId, mobileToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ICareUserImplCopyWith<_$ICareUserImpl> get copyWith =>
      __$$ICareUserImplCopyWithImpl<_$ICareUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ICareUserImplToJson(
      this,
    );
  }
}

abstract class _ICareUser implements ICareUser {
  const factory _ICareUser(
      {final String? name,
      final String? email,
      final String? profileImage,
      final String? uId,
      final String? mobileToken}) = _$ICareUserImpl;

  factory _ICareUser.fromJson(Map<String, dynamic> json) =
      _$ICareUserImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get profileImage;
  @override
  String? get uId;
  @override
  String? get mobileToken;
  @override
  @JsonKey(ignore: true)
  _$$ICareUserImplCopyWith<_$ICareUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
