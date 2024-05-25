// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_level_marking_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvancedLevelMarkingResponse _$AdvancedLevelMarkingResponseFromJson(
    Map<String, dynamic> json) {
  return __AdvancedLevelMarkingResponse.fromJson(json);
}

/// @nodoc
mixin _$AdvancedLevelMarkingResponse {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  double get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvancedLevelMarkingResponseCopyWith<AdvancedLevelMarkingResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedLevelMarkingResponseCopyWith<$Res> {
  factory $AdvancedLevelMarkingResponseCopyWith(
          AdvancedLevelMarkingResponse value,
          $Res Function(AdvancedLevelMarkingResponse) then) =
      _$AdvancedLevelMarkingResponseCopyWithImpl<$Res,
          AdvancedLevelMarkingResponse>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'image_url') String imageUrl,
      double percent});
}

/// @nodoc
class _$AdvancedLevelMarkingResponseCopyWithImpl<$Res,
        $Val extends AdvancedLevelMarkingResponse>
    implements $AdvancedLevelMarkingResponseCopyWith<$Res> {
  _$AdvancedLevelMarkingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imageUrl = null,
    Object? percent = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvancedLevelMarkingResponseImplCopyWith<$Res>
    implements $AdvancedLevelMarkingResponseCopyWith<$Res> {
  factory _$$_AdvancedLevelMarkingResponseImplCopyWith(
          _$_AdvancedLevelMarkingResponseImpl value,
          $Res Function(_$_AdvancedLevelMarkingResponseImpl) then) =
      __$$_AdvancedLevelMarkingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(name: 'image_url') String imageUrl,
      double percent});
}

/// @nodoc
class __$$_AdvancedLevelMarkingResponseImplCopyWithImpl<$Res>
    extends _$AdvancedLevelMarkingResponseCopyWithImpl<$Res,
        _$_AdvancedLevelMarkingResponseImpl>
    implements _$$_AdvancedLevelMarkingResponseImplCopyWith<$Res> {
  __$$_AdvancedLevelMarkingResponseImplCopyWithImpl(
      _$_AdvancedLevelMarkingResponseImpl _value,
      $Res Function(_$_AdvancedLevelMarkingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? imageUrl = null,
    Object? percent = null,
  }) {
    return _then(_$_AdvancedLevelMarkingResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdvancedLevelMarkingResponseImpl
    implements __AdvancedLevelMarkingResponse {
  const _$_AdvancedLevelMarkingResponseImpl(
      {required this.status,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.percent});

  factory _$_AdvancedLevelMarkingResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$_AdvancedLevelMarkingResponseImplFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final double percent;

  @override
  String toString() {
    return 'AdvancedLevelMarkingResponse(status: $status, imageUrl: $imageUrl, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvancedLevelMarkingResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, imageUrl, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvancedLevelMarkingResponseImplCopyWith<
          _$_AdvancedLevelMarkingResponseImpl>
      get copyWith => __$$_AdvancedLevelMarkingResponseImplCopyWithImpl<
          _$_AdvancedLevelMarkingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvancedLevelMarkingResponseImplToJson(
      this,
    );
  }
}

abstract class __AdvancedLevelMarkingResponse
    implements AdvancedLevelMarkingResponse {
  const factory __AdvancedLevelMarkingResponse(
      {required final String status,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final double percent}) = _$_AdvancedLevelMarkingResponseImpl;

  factory __AdvancedLevelMarkingResponse.fromJson(Map<String, dynamic> json) =
      _$_AdvancedLevelMarkingResponseImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  double get percent;
  @override
  @JsonKey(ignore: true)
  _$$_AdvancedLevelMarkingResponseImplCopyWith<
          _$_AdvancedLevelMarkingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
