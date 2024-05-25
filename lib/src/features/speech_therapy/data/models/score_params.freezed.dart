// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScoreParams {
  String get userId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreParamsCopyWith<ScoreParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreParamsCopyWith<$Res> {
  factory $ScoreParamsCopyWith(
          ScoreParams value, $Res Function(ScoreParams) then) =
      _$ScoreParamsCopyWithImpl<$Res, ScoreParams>;
  @useResult
  $Res call({String userId, int level});
}

/// @nodoc
class _$ScoreParamsCopyWithImpl<$Res, $Val extends ScoreParams>
    implements $ScoreParamsCopyWith<$Res> {
  _$ScoreParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScoreParamsImplCopyWith<$Res>
    implements $ScoreParamsCopyWith<$Res> {
  factory _$$ScoreParamsImplCopyWith(
          _$ScoreParamsImpl value, $Res Function(_$ScoreParamsImpl) then) =
      __$$ScoreParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int level});
}

/// @nodoc
class __$$ScoreParamsImplCopyWithImpl<$Res>
    extends _$ScoreParamsCopyWithImpl<$Res, _$ScoreParamsImpl>
    implements _$$ScoreParamsImplCopyWith<$Res> {
  __$$ScoreParamsImplCopyWithImpl(
      _$ScoreParamsImpl _value, $Res Function(_$ScoreParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? level = null,
  }) {
    return _then(_$ScoreParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScoreParamsImpl implements _ScoreParams {
  const _$ScoreParamsImpl({required this.userId, required this.level});

  @override
  final String userId;
  @override
  final int level;

  @override
  String toString() {
    return 'ScoreParams(userId: $userId, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreParamsImplCopyWith<_$ScoreParamsImpl> get copyWith =>
      __$$ScoreParamsImplCopyWithImpl<_$ScoreParamsImpl>(this, _$identity);
}

abstract class _ScoreParams implements ScoreParams {
  const factory _ScoreParams(
      {required final String userId,
      required final int level}) = _$ScoreParamsImpl;

  @override
  String get userId;
  @override
  int get level;
  @override
  @JsonKey(ignore: true)
  _$$ScoreParamsImplCopyWith<_$ScoreParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
