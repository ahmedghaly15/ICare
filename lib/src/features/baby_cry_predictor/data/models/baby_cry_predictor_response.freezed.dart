// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baby_cry_predictor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BabyCryPredictorResponse _$BabyCryPredictorResponseFromJson(
    Map<String, dynamic> json) {
  return _BabyCryPredictorResponse.fromJson(json);
}

/// @nodoc
mixin _$BabyCryPredictorResponse {
  String get feeling => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BabyCryPredictorResponseCopyWith<BabyCryPredictorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyCryPredictorResponseCopyWith<$Res> {
  factory $BabyCryPredictorResponseCopyWith(BabyCryPredictorResponse value,
          $Res Function(BabyCryPredictorResponse) then) =
      _$BabyCryPredictorResponseCopyWithImpl<$Res, BabyCryPredictorResponse>;
  @useResult
  $Res call({String feeling, String photo});
}

/// @nodoc
class _$BabyCryPredictorResponseCopyWithImpl<$Res,
        $Val extends BabyCryPredictorResponse>
    implements $BabyCryPredictorResponseCopyWith<$Res> {
  _$BabyCryPredictorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      feeling: null == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BabyCryPredictorResponseImplCopyWith<$Res>
    implements $BabyCryPredictorResponseCopyWith<$Res> {
  factory _$$BabyCryPredictorResponseImplCopyWith(
          _$BabyCryPredictorResponseImpl value,
          $Res Function(_$BabyCryPredictorResponseImpl) then) =
      __$$BabyCryPredictorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feeling, String photo});
}

/// @nodoc
class __$$BabyCryPredictorResponseImplCopyWithImpl<$Res>
    extends _$BabyCryPredictorResponseCopyWithImpl<$Res,
        _$BabyCryPredictorResponseImpl>
    implements _$$BabyCryPredictorResponseImplCopyWith<$Res> {
  __$$BabyCryPredictorResponseImplCopyWithImpl(
      _$BabyCryPredictorResponseImpl _value,
      $Res Function(_$BabyCryPredictorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feeling = null,
    Object? photo = null,
  }) {
    return _then(_$BabyCryPredictorResponseImpl(
      feeling: null == feeling
          ? _value.feeling
          : feeling // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BabyCryPredictorResponseImpl implements _BabyCryPredictorResponse {
  const _$BabyCryPredictorResponseImpl(
      {required this.feeling, required this.photo});

  factory _$BabyCryPredictorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BabyCryPredictorResponseImplFromJson(json);

  @override
  final String feeling;
  @override
  final String photo;

  @override
  String toString() {
    return 'BabyCryPredictorResponse(feeling: $feeling, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabyCryPredictorResponseImpl &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feeling, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BabyCryPredictorResponseImplCopyWith<_$BabyCryPredictorResponseImpl>
      get copyWith => __$$BabyCryPredictorResponseImplCopyWithImpl<
          _$BabyCryPredictorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BabyCryPredictorResponseImplToJson(
      this,
    );
  }
}

abstract class _BabyCryPredictorResponse implements BabyCryPredictorResponse {
  const factory _BabyCryPredictorResponse(
      {required final String feeling,
      required final String photo}) = _$BabyCryPredictorResponseImpl;

  factory _BabyCryPredictorResponse.fromJson(Map<String, dynamic> json) =
      _$BabyCryPredictorResponseImpl.fromJson;

  @override
  String get feeling;
  @override
  String get photo;
  @override
  @JsonKey(ignore: true)
  _$$BabyCryPredictorResponseImplCopyWith<_$BabyCryPredictorResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
