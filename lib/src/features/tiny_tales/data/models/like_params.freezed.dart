// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LikeParams {
  String get tinyTaleId => throw _privateConstructorUsedError;
  String? get commentId => throw _privateConstructorUsedError;
  String? get replyId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikeParamsCopyWith<LikeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeParamsCopyWith<$Res> {
  factory $LikeParamsCopyWith(
          LikeParams value, $Res Function(LikeParams) then) =
      _$LikeParamsCopyWithImpl<$Res, LikeParams>;
  @useResult
  $Res call({String tinyTaleId, String? commentId, String? replyId});
}

/// @nodoc
class _$LikeParamsCopyWithImpl<$Res, $Val extends LikeParams>
    implements $LikeParamsCopyWith<$Res> {
  _$LikeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = null,
    Object? commentId = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_value.copyWith(
      tinyTaleId: null == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeParamsImplCopyWith<$Res>
    implements $LikeParamsCopyWith<$Res> {
  factory _$$LikeParamsImplCopyWith(
          _$LikeParamsImpl value, $Res Function(_$LikeParamsImpl) then) =
      __$$LikeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tinyTaleId, String? commentId, String? replyId});
}

/// @nodoc
class __$$LikeParamsImplCopyWithImpl<$Res>
    extends _$LikeParamsCopyWithImpl<$Res, _$LikeParamsImpl>
    implements _$$LikeParamsImplCopyWith<$Res> {
  __$$LikeParamsImplCopyWithImpl(
      _$LikeParamsImpl _value, $Res Function(_$LikeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = null,
    Object? commentId = freezed,
    Object? replyId = freezed,
  }) {
    return _then(_$LikeParamsImpl(
      tinyTaleId: null == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LikeParamsImpl implements _LikeParams {
  const _$LikeParamsImpl(
      {required this.tinyTaleId, this.commentId, this.replyId});

  @override
  final String tinyTaleId;
  @override
  final String? commentId;
  @override
  final String? replyId;

  @override
  String toString() {
    return 'LikeParams(tinyTaleId: $tinyTaleId, commentId: $commentId, replyId: $replyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeParamsImpl &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.replyId, replyId) || other.replyId == replyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tinyTaleId, commentId, replyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeParamsImplCopyWith<_$LikeParamsImpl> get copyWith =>
      __$$LikeParamsImplCopyWithImpl<_$LikeParamsImpl>(this, _$identity);
}

abstract class _LikeParams implements LikeParams {
  const factory _LikeParams(
      {required final String tinyTaleId,
      final String? commentId,
      final String? replyId}) = _$LikeParamsImpl;

  @override
  String get tinyTaleId;
  @override
  String? get commentId;
  @override
  String? get replyId;
  @override
  @JsonKey(ignore: true)
  _$$LikeParamsImplCopyWith<_$LikeParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
