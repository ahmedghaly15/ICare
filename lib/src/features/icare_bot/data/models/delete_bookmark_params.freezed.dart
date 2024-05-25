// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_bookmark_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteBookmarkParams {
  String get userId => throw _privateConstructorUsedError;
  String get bookmarkId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeleteBookmarkParamsCopyWith<DeleteBookmarkParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBookmarkParamsCopyWith<$Res> {
  factory $DeleteBookmarkParamsCopyWith(DeleteBookmarkParams value,
          $Res Function(DeleteBookmarkParams) then) =
      _$DeleteBookmarkParamsCopyWithImpl<$Res, DeleteBookmarkParams>;
  @useResult
  $Res call({String userId, String bookmarkId});
}

/// @nodoc
class _$DeleteBookmarkParamsCopyWithImpl<$Res,
        $Val extends DeleteBookmarkParams>
    implements $DeleteBookmarkParamsCopyWith<$Res> {
  _$DeleteBookmarkParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookmarkId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarkId: null == bookmarkId
          ? _value.bookmarkId
          : bookmarkId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteBookmarkParamsImplCopyWith<$Res>
    implements $DeleteBookmarkParamsCopyWith<$Res> {
  factory _$$DeleteBookmarkParamsImplCopyWith(_$DeleteBookmarkParamsImpl value,
          $Res Function(_$DeleteBookmarkParamsImpl) then) =
      __$$DeleteBookmarkParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String bookmarkId});
}

/// @nodoc
class __$$DeleteBookmarkParamsImplCopyWithImpl<$Res>
    extends _$DeleteBookmarkParamsCopyWithImpl<$Res, _$DeleteBookmarkParamsImpl>
    implements _$$DeleteBookmarkParamsImplCopyWith<$Res> {
  __$$DeleteBookmarkParamsImplCopyWithImpl(_$DeleteBookmarkParamsImpl _value,
      $Res Function(_$DeleteBookmarkParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? bookmarkId = null,
  }) {
    return _then(_$DeleteBookmarkParamsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarkId: null == bookmarkId
          ? _value.bookmarkId
          : bookmarkId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBookmarkParamsImpl implements _DeleteBookmarkParams {
  const _$DeleteBookmarkParamsImpl(
      {required this.userId, required this.bookmarkId});

  @override
  final String userId;
  @override
  final String bookmarkId;

  @override
  String toString() {
    return 'DeleteBookmarkParams(userId: $userId, bookmarkId: $bookmarkId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookmarkId, bookmarkId) ||
                other.bookmarkId == bookmarkId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, bookmarkId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkParamsImplCopyWith<_$DeleteBookmarkParamsImpl>
      get copyWith =>
          __$$DeleteBookmarkParamsImplCopyWithImpl<_$DeleteBookmarkParamsImpl>(
              this, _$identity);
}

abstract class _DeleteBookmarkParams implements DeleteBookmarkParams {
  const factory _DeleteBookmarkParams(
      {required final String userId,
      required final String bookmarkId}) = _$DeleteBookmarkParamsImpl;

  @override
  String get userId;
  @override
  String get bookmarkId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteBookmarkParamsImplCopyWith<_$DeleteBookmarkParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
