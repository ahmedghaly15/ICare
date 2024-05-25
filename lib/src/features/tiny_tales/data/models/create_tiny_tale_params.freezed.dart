// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tiny_tale_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTinyTaleParams {
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get tinyTaleImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTinyTaleParamsCopyWith<CreateTinyTaleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTinyTaleParamsCopyWith<$Res> {
  factory $CreateTinyTaleParamsCopyWith(CreateTinyTaleParams value,
          $Res Function(CreateTinyTaleParams) then) =
      _$CreateTinyTaleParamsCopyWithImpl<$Res, CreateTinyTaleParams>;
  @useResult
  $Res call({String date, String time, String? text, String? tinyTaleImage});
}

/// @nodoc
class _$CreateTinyTaleParamsCopyWithImpl<$Res,
        $Val extends CreateTinyTaleParams>
    implements $CreateTinyTaleParamsCopyWith<$Res> {
  _$CreateTinyTaleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? time = null,
    Object? text = freezed,
    Object? tinyTaleImage = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleImage: freezed == tinyTaleImage
          ? _value.tinyTaleImage
          : tinyTaleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTinyTaleParamsImplCopyWith<$Res>
    implements $CreateTinyTaleParamsCopyWith<$Res> {
  factory _$$CreateTinyTaleParamsImplCopyWith(_$CreateTinyTaleParamsImpl value,
          $Res Function(_$CreateTinyTaleParamsImpl) then) =
      __$$CreateTinyTaleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String time, String? text, String? tinyTaleImage});
}

/// @nodoc
class __$$CreateTinyTaleParamsImplCopyWithImpl<$Res>
    extends _$CreateTinyTaleParamsCopyWithImpl<$Res, _$CreateTinyTaleParamsImpl>
    implements _$$CreateTinyTaleParamsImplCopyWith<$Res> {
  __$$CreateTinyTaleParamsImplCopyWithImpl(_$CreateTinyTaleParamsImpl _value,
      $Res Function(_$CreateTinyTaleParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? time = null,
    Object? text = freezed,
    Object? tinyTaleImage = freezed,
  }) {
    return _then(_$CreateTinyTaleParamsImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      tinyTaleImage: freezed == tinyTaleImage
          ? _value.tinyTaleImage
          : tinyTaleImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateTinyTaleParamsImpl implements _CreateTinyTaleParams {
  const _$CreateTinyTaleParamsImpl(
      {required this.date, required this.time, this.text, this.tinyTaleImage});

  @override
  final String date;
  @override
  final String time;
  @override
  final String? text;
  @override
  final String? tinyTaleImage;

  @override
  String toString() {
    return 'CreateTinyTaleParams(date: $date, time: $time, text: $text, tinyTaleImage: $tinyTaleImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTinyTaleParamsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.tinyTaleImage, tinyTaleImage) ||
                other.tinyTaleImage == tinyTaleImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, time, text, tinyTaleImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTinyTaleParamsImplCopyWith<_$CreateTinyTaleParamsImpl>
      get copyWith =>
          __$$CreateTinyTaleParamsImplCopyWithImpl<_$CreateTinyTaleParamsImpl>(
              this, _$identity);
}

abstract class _CreateTinyTaleParams implements CreateTinyTaleParams {
  const factory _CreateTinyTaleParams(
      {required final String date,
      required final String time,
      final String? text,
      final String? tinyTaleImage}) = _$CreateTinyTaleParamsImpl;

  @override
  String get date;
  @override
  String get time;
  @override
  String? get text;
  @override
  String? get tinyTaleImage;
  @override
  @JsonKey(ignore: true)
  _$$CreateTinyTaleParamsImplCopyWith<_$CreateTinyTaleParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
