// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_bookmark_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteBookmarkResponse _$DeleteBookmarkResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteBookmarkResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteBookmarkResponse {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteBookmarkResponseCopyWith<DeleteBookmarkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteBookmarkResponseCopyWith<$Res> {
  factory $DeleteBookmarkResponseCopyWith(DeleteBookmarkResponse value,
          $Res Function(DeleteBookmarkResponse) then) =
      _$DeleteBookmarkResponseCopyWithImpl<$Res, DeleteBookmarkResponse>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DeleteBookmarkResponseCopyWithImpl<$Res,
        $Val extends DeleteBookmarkResponse>
    implements $DeleteBookmarkResponseCopyWith<$Res> {
  _$DeleteBookmarkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteBookmarkResponseImplCopyWith<$Res>
    implements $DeleteBookmarkResponseCopyWith<$Res> {
  factory _$$DeleteBookmarkResponseImplCopyWith(
          _$DeleteBookmarkResponseImpl value,
          $Res Function(_$DeleteBookmarkResponseImpl) then) =
      __$$DeleteBookmarkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteBookmarkResponseImplCopyWithImpl<$Res>
    extends _$DeleteBookmarkResponseCopyWithImpl<$Res,
        _$DeleteBookmarkResponseImpl>
    implements _$$DeleteBookmarkResponseImplCopyWith<$Res> {
  __$$DeleteBookmarkResponseImplCopyWithImpl(
      _$DeleteBookmarkResponseImpl _value,
      $Res Function(_$DeleteBookmarkResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteBookmarkResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteBookmarkResponseImpl implements _DeleteBookmarkResponse {
  const _$DeleteBookmarkResponseImpl({required this.message});

  factory _$DeleteBookmarkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteBookmarkResponseImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DeleteBookmarkResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookmarkResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookmarkResponseImplCopyWith<_$DeleteBookmarkResponseImpl>
      get copyWith => __$$DeleteBookmarkResponseImplCopyWithImpl<
          _$DeleteBookmarkResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteBookmarkResponseImplToJson(
      this,
    );
  }
}

abstract class _DeleteBookmarkResponse implements DeleteBookmarkResponse {
  const factory _DeleteBookmarkResponse({required final String message}) =
      _$DeleteBookmarkResponseImpl;

  factory _DeleteBookmarkResponse.fromJson(Map<String, dynamic> json) =
      _$DeleteBookmarkResponseImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteBookmarkResponseImplCopyWith<_$DeleteBookmarkResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
