// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_replies_view_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentRepliesViewParams {
  String? get tinyTaleId => throw _privateConstructorUsedError;
  CommentModel? get comment => throw _privateConstructorUsedError;
  String? get commentOwnerEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentRepliesViewParamsCopyWith<CommentRepliesViewParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentRepliesViewParamsCopyWith<$Res> {
  factory $CommentRepliesViewParamsCopyWith(CommentRepliesViewParams value,
          $Res Function(CommentRepliesViewParams) then) =
      _$CommentRepliesViewParamsCopyWithImpl<$Res, CommentRepliesViewParams>;
  @useResult
  $Res call(
      {String? tinyTaleId, CommentModel? comment, String? commentOwnerEmail});

  $CommentModelCopyWith<$Res>? get comment;
}

/// @nodoc
class _$CommentRepliesViewParamsCopyWithImpl<$Res,
        $Val extends CommentRepliesViewParams>
    implements $CommentRepliesViewParamsCopyWith<$Res> {
  _$CommentRepliesViewParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? comment = freezed,
    Object? commentOwnerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      commentOwnerEmail: freezed == commentOwnerEmail
          ? _value.commentOwnerEmail
          : commentOwnerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $CommentModelCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentRepliesViewParamsImplCopyWith<$Res>
    implements $CommentRepliesViewParamsCopyWith<$Res> {
  factory _$$CommentRepliesViewParamsImplCopyWith(
          _$CommentRepliesViewParamsImpl value,
          $Res Function(_$CommentRepliesViewParamsImpl) then) =
      __$$CommentRepliesViewParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tinyTaleId, CommentModel? comment, String? commentOwnerEmail});

  @override
  $CommentModelCopyWith<$Res>? get comment;
}

/// @nodoc
class __$$CommentRepliesViewParamsImplCopyWithImpl<$Res>
    extends _$CommentRepliesViewParamsCopyWithImpl<$Res,
        _$CommentRepliesViewParamsImpl>
    implements _$$CommentRepliesViewParamsImplCopyWith<$Res> {
  __$$CommentRepliesViewParamsImplCopyWithImpl(
      _$CommentRepliesViewParamsImpl _value,
      $Res Function(_$CommentRepliesViewParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tinyTaleId = freezed,
    Object? comment = freezed,
    Object? commentOwnerEmail = freezed,
  }) {
    return _then(_$CommentRepliesViewParamsImpl(
      tinyTaleId: freezed == tinyTaleId
          ? _value.tinyTaleId
          : tinyTaleId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CommentModel?,
      commentOwnerEmail: freezed == commentOwnerEmail
          ? _value.commentOwnerEmail
          : commentOwnerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommentRepliesViewParamsImpl implements _CommentRepliesViewParams {
  const _$CommentRepliesViewParamsImpl(
      {required this.tinyTaleId,
      required this.comment,
      this.commentOwnerEmail});

  @override
  final String? tinyTaleId;
  @override
  final CommentModel? comment;
  @override
  final String? commentOwnerEmail;

  @override
  String toString() {
    return 'CommentRepliesViewParams(tinyTaleId: $tinyTaleId, comment: $comment, commentOwnerEmail: $commentOwnerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentRepliesViewParamsImpl &&
            (identical(other.tinyTaleId, tinyTaleId) ||
                other.tinyTaleId == tinyTaleId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentOwnerEmail, commentOwnerEmail) ||
                other.commentOwnerEmail == commentOwnerEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tinyTaleId, comment, commentOwnerEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentRepliesViewParamsImplCopyWith<_$CommentRepliesViewParamsImpl>
      get copyWith => __$$CommentRepliesViewParamsImplCopyWithImpl<
          _$CommentRepliesViewParamsImpl>(this, _$identity);
}

abstract class _CommentRepliesViewParams implements CommentRepliesViewParams {
  const factory _CommentRepliesViewParams(
      {required final String? tinyTaleId,
      required final CommentModel? comment,
      final String? commentOwnerEmail}) = _$CommentRepliesViewParamsImpl;

  @override
  String? get tinyTaleId;
  @override
  CommentModel? get comment;
  @override
  String? get commentOwnerEmail;
  @override
  @JsonKey(ignore: true)
  _$$CommentRepliesViewParamsImplCopyWith<_$CommentRepliesViewParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
