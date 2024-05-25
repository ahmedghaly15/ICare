// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_comment_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteCommentParams {
  String? get tinyTaleId => throw _privateConstructorUsedError;
  String? get commentId => throw _privateConstructorUsedError;
  String? get commentReplyId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteCommentParamsCopyWith<DeleteCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentParamsCopyWith<$Res> {
  factory $DeleteCommentParamsCopyWith(
          DeleteCommentParams value, $Res Function(DeleteCommentParams) then) =
      _$DeleteCommentParamsCopyWithImpl<$Res, DeleteCommentParams>;
  @useResult
  $Res call({String? tinyTaleId, String? commentId, String? commentReplyId});
}

/// @nodoc
class _$DeleteCommentParamsCopyWithImpl<$Res, $Val extends DeleteCommentParams>
    implements $DeleteCommentParamsCopyWith<$Res> {
  _$DeleteCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? commentId = freezed,
    Object? commentReplyId = freezed,
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
      commentReplyId: freezed == commentReplyId
          ? _value.commentReplyId
          : commentReplyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommentParamsImplCopyWith<$Res>
    implements $DeleteCommentParamsCopyWith<$Res> {
  factory _$$DeleteCommentParamsImplCopyWith(_$DeleteCommentParamsImpl value,
          $Res Function(_$DeleteCommentParamsImpl) then) =
      __$$DeleteCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tinyTaleId, String? commentId, String? commentReplyId});
}

/// @nodoc
class __$$DeleteCommentParamsImplCopyWithImpl<$Res>
    extends _$DeleteCommentParamsCopyWithImpl<$Res, _$DeleteCommentParamsImpl>
    implements _$$DeleteCommentParamsImplCopyWith<$Res> {
  __$$DeleteCommentParamsImplCopyWithImpl(_$DeleteCommentParamsImpl _value,
      $Res Function(_$DeleteCommentParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? commentId = freezed,
    Object? commentReplyId = freezed,
  }) {
    return _then(_$DeleteCommentParamsImpl(
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentReplyId: freezed == commentReplyId
          ? _value.commentReplyId
          : commentReplyId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteCommentParamsImpl implements _DeleteCommentParams {
  const _$DeleteCommentParamsImpl(
      {this.tinyTaleId, this.commentId, this.commentReplyId});

  @override
  final String? tinyTaleId;
  @override
  final String? commentId;
  @override
  final String? commentReplyId;

  @override
  String toString() {
    return 'DeleteCommentParams(tinyTaleId: $tinyTaleId, commentId: $commentId, commentReplyId: $commentReplyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentParamsImpl &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.commentReplyId, commentReplyId) ||
                other.commentReplyId == commentReplyId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tinyTaleId, commentId, commentReplyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentParamsImplCopyWith<_$DeleteCommentParamsImpl> get copyWith =>
      __$$DeleteCommentParamsImplCopyWithImpl<_$DeleteCommentParamsImpl>(
          this, _$identity);
}

abstract class _DeleteCommentParams implements DeleteCommentParams {
  const factory _DeleteCommentParams(
      {final String? tinyTaleId,
      final String? commentId,
      final String? commentReplyId}) = _$DeleteCommentParamsImpl;

  @override
  String? get tinyTaleId;
  @override
  String? get commentId;
  @override
  String? get commentReplyId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCommentParamsImplCopyWith<_$DeleteCommentParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
