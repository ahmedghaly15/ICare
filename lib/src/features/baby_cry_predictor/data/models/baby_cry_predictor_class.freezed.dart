// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'baby_cry_predictor_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BabyCryPredictorClass _$BabyCryPredictorClassFromJson(
    Map<String, dynamic> json) {
  return _BabyCryPredictorClass.fromJson(json);
}

/// @nodoc
mixin _$BabyCryPredictorClass {
  @JsonKey(name: 'Class')
  String get className => throw _privateConstructorUsedError;
  String get audio => throw _privateConstructorUsedError;
  String get hint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BabyCryPredictorClassCopyWith<BabyCryPredictorClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BabyCryPredictorClassCopyWith<$Res> {
  factory $BabyCryPredictorClassCopyWith(BabyCryPredictorClass value,
          $Res Function(BabyCryPredictorClass) then) =
      _$BabyCryPredictorClassCopyWithImpl<$Res, BabyCryPredictorClass>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Class') String className, String audio, String hint});
}

/// @nodoc
class _$BabyCryPredictorClassCopyWithImpl<$Res,
        $Val extends BabyCryPredictorClass>
    implements $BabyCryPredictorClassCopyWith<$Res> {
  _$BabyCryPredictorClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? audio = null,
    Object? hint = null,
  }) {
    return _then(_value.copyWith(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BabyCryPredictorClassImplCopyWith<$Res>
    implements $BabyCryPredictorClassCopyWith<$Res> {
  factory _$$BabyCryPredictorClassImplCopyWith(
          _$BabyCryPredictorClassImpl value,
          $Res Function(_$BabyCryPredictorClassImpl) then) =
      __$$BabyCryPredictorClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Class') String className, String audio, String hint});
}

/// @nodoc
class __$$BabyCryPredictorClassImplCopyWithImpl<$Res>
    extends _$BabyCryPredictorClassCopyWithImpl<$Res,
        _$BabyCryPredictorClassImpl>
    implements _$$BabyCryPredictorClassImplCopyWith<$Res> {
  __$$BabyCryPredictorClassImplCopyWithImpl(_$BabyCryPredictorClassImpl _value,
      $Res Function(_$BabyCryPredictorClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? audio = null,
    Object? hint = null,
  }) {
    return _then(_$BabyCryPredictorClassImpl(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BabyCryPredictorClassImpl implements _BabyCryPredictorClass {
  const _$BabyCryPredictorClassImpl(
      {@JsonKey(name: 'Class') required this.className,
      required this.audio,
      required this.hint});

  factory _$BabyCryPredictorClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$BabyCryPredictorClassImplFromJson(json);

  @override
  @JsonKey(name: 'Class')
  final String className;
  @override
  final String audio;
  @override
  final String hint;

  @override
  String toString() {
    return 'BabyCryPredictorClass(className: $className, audio: $audio, hint: $hint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BabyCryPredictorClassImpl &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.hint, hint) || other.hint == hint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, className, audio, hint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BabyCryPredictorClassImplCopyWith<_$BabyCryPredictorClassImpl>
      get copyWith => __$$BabyCryPredictorClassImplCopyWithImpl<
          _$BabyCryPredictorClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BabyCryPredictorClassImplToJson(
      this,
    );
  }
}

abstract class _BabyCryPredictorClass implements BabyCryPredictorClass {
  const factory _BabyCryPredictorClass(
      {@JsonKey(name: 'Class') required final String className,
      required final String audio,
      required final String hint}) = _$BabyCryPredictorClassImpl;

  factory _BabyCryPredictorClass.fromJson(Map<String, dynamic> json) =
      _$BabyCryPredictorClassImpl.fromJson;

  @override
  @JsonKey(name: 'Class')
  String get className;
  @override
  String get audio;
  @override
  String get hint;
  @override
  @JsonKey(ignore: true)
  _$$BabyCryPredictorClassImplCopyWith<_$BabyCryPredictorClassImpl>
      get copyWith => throw _privateConstructorUsedError;
}
