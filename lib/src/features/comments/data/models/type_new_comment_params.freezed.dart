// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_new_comment_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TypeNewCommentParams {
  String? get tinyTaleId => throw _privateConstructorUsedError;
  String? get commentId => throw _privateConstructorUsedError;
  CommentData? get commentData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TypeNewCommentParamsCopyWith<TypeNewCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeNewCommentParamsCopyWith<$Res> {
  factory $TypeNewCommentParamsCopyWith(TypeNewCommentParams value,
          $Res Function(TypeNewCommentParams) then) =
      _$TypeNewCommentParamsCopyWithImpl<$Res, TypeNewCommentParams>;
  @useResult
  $Res call({String? tinyTaleId, String? commentId, CommentData? commentData});

  $CommentDataCopyWith<$Res>? get commentData;
}

/// @nodoc
class _$TypeNewCommentParamsCopyWithImpl<$Res,
        $Val extends TypeNewCommentParams>
    implements $TypeNewCommentParamsCopyWith<$Res> {
  _$TypeNewCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? commentId = freezed,
    Object? commentData = freezed,
  }) {
    return _then(_value.copyWith(
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentData: freezed == commentData
          ? _value.commentData
          : commentData // ignore: cast_nullable_to_non_nullable
              as CommentData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentDataCopyWith<$Res>? get commentData {
    if (_value.commentData == null) {
      return null;
    }

    return $CommentDataCopyWith<$Res>(_value.commentData!, (value) {
      return _then(_value.copyWith(commentData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeNewCommentParamsImplCopyWith<$Res>
    implements $TypeNewCommentParamsCopyWith<$Res> {
  factory _$$TypeNewCommentParamsImplCopyWith(_$TypeNewCommentParamsImpl value,
          $Res Function(_$TypeNewCommentParamsImpl) then) =
      __$$TypeNewCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tinyTaleId, String? commentId, CommentData? commentData});

  @override
  $CommentDataCopyWith<$Res>? get commentData;
}

/// @nodoc
class __$$TypeNewCommentParamsImplCopyWithImpl<$Res>
    extends _$TypeNewCommentParamsCopyWithImpl<$Res, _$TypeNewCommentParamsImpl>
    implements _$$TypeNewCommentParamsImplCopyWith<$Res> {
  __$$TypeNewCommentParamsImplCopyWithImpl(_$TypeNewCommentParamsImpl _value,
      $Res Function(_$TypeNewCommentParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? commentId = freezed,
    Object? commentData = freezed,
  }) {
    return _then(_$TypeNewCommentParamsImpl(
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentData: freezed == commentData
          ? _value.commentData
          : commentData // ignore: cast_nullable_to_non_nullable
              as CommentData?,
    ));
  }
}

/// @nodoc

class _$TypeNewCommentParamsImpl implements _TypeNewCommentParams {
  const _$TypeNewCommentParamsImpl(
      {this.tinyTaleId, this.commentId, this.commentData});

  @override
  final String? tinyTaleId;
  @override
  final String? commentId;
  @override
  final CommentData? commentData;

  @override
  String toString() {
    return 'TypeNewCommentParams(tinyTaleId: $tinyTaleId, commentId: $commentId, commentData: $commentData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeNewCommentParamsImpl &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.commentData, commentData) ||
                other.commentData == commentData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tinyTaleId, commentId, commentData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeNewCommentParamsImplCopyWith<_$TypeNewCommentParamsImpl>
      get copyWith =>
          __$$TypeNewCommentParamsImplCopyWithImpl<_$TypeNewCommentParamsImpl>(
              this, _$identity);
}

abstract class _TypeNewCommentParams implements TypeNewCommentParams {
  const factory _TypeNewCommentParams(
      {final String? tinyTaleId,
      final String? commentId,
      final CommentData? commentData}) = _$TypeNewCommentParamsImpl;

  @override
  String? get tinyTaleId;
  @override
  String? get commentId;
  @override
  CommentData? get commentData;
  @override
  @JsonKey(ignore: true)
  _$$TypeNewCommentParamsImplCopyWith<_$TypeNewCommentParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
