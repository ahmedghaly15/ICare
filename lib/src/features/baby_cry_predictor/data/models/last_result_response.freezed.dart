// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastResultResponse _$LastResultResponseFromJson(Map<String, dynamic> json) {
  return _LastResultResponse.fromJson(json);
}

/// @nodoc
mixin _$LastResultResponse {
  String? get feeling => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastResultResponseCopyWith<LastResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastResultResponseCopyWith<$Res> {
  factory $LastResultResponseCopyWith(
          LastResultResponse value, $Res Function(LastResultResponse) then) =
      _$LastResultResponseCopyWithImpl<$Res, LastResultResponse>;
  @useResult
  $Res call({String? feeling, String? photo});
}

/// @nodoc
class _$LastResultResponseCopyWithImpl<$Res, $Val extends LastResultResponse>
    implements $LastResultResponseCopyWith<$Res> {
  _$LastResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      feeling: freezed == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastResultResponseImplCopyWith<$Res>
    implements $LastResultResponseCopyWith<$Res> {
  factory _$$LastResultResponseImplCopyWith(_$LastResultResponseImpl value,
          $Res Function(_$LastResultResponseImpl) then) =
      __$$LastResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? feeling, String? photo});
}

/// @nodoc
class __$$LastResultResponseImplCopyWithImpl<$Res>
    extends _$LastResultResponseCopyWithImpl<$Res, _$LastResultResponseImpl>
    implements _$$LastResultResponseImplCopyWith<$Res> {
  __$$LastResultResponseImplCopyWithImpl(_$LastResultResponseImpl _value,
      $Res Function(_$LastResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$LastResultResponseImpl(
      feeling: freezed == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastResultResponseImpl implements _LastResultResponse {
  const _$LastResultResponseImpl({this.feeling, this.photo});

  factory _$LastResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastResultResponseImplFromJson(json);

  @override
  final String? feeling;
  @override
  final String? photo;

  @override
  String toString() {
    return 'LastResultResponse(feeling: $feeling, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastResultResponseImpl &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feeling, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastResultResponseImplCopyWith<_$LastResultResponseImpl> get copyWith =>
      __$$LastResultResponseImplCopyWithImpl<_$LastResultResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastResultResponseImplToJson(
      this,
    );
  }
}

abstract class _LastResultResponse implements LastResultResponse {
  const factory _LastResultResponse(
      {final String? feeling, final String? photo}) = _$LastResultResponseImpl;

  factory _LastResultResponse.fromJson(Map<String, dynamic> json) =
      _$LastResultResponseImpl.fromJson;

  @override
  String? get feeling;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$LastResultResponseImplCopyWith<_$LastResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
